select * from users;
select * from users where snils = 0;
update users set snils = floor(1+rand()*10000) where snils = 0;
update users set updated_at = CURRENT_TIMESTAMP where created_at > updated_at; 

select * from profiles;
update profiles set updated_at = CURRENT_TIMESTAMP where created_at > updated_at; 

select * from registration_addresses;
update registration_addresses set updated_at = CURRENT_TIMESTAMP where created_at > updated_at; 

select * from residential_addresses;
update residential_addresses set updated_at = CURRENT_TIMESTAMP where created_at > updated_at; 

select * from user_documents_types;
update user_documents_types set updated_at = CURRENT_TIMESTAMP where created_at > updated_at; 

select * from user_documents;
update user_documents set updated_at = CURRENT_TIMESTAMP where created_at > updated_at; 

select * from user_transport_vehicles;
update user_transport_vehicles set updated_at = CURRENT_TIMESTAMP where created_at > updated_at; 
update user_transport_vehicles set state_registration_number = FLOOR(1 + RAND() * 1000000);

select * from children;
update children set updated_at = CURRENT_TIMESTAMP where created_at > updated_at; 
update children set second_parent_user_id = FLOOR(1 + RAND() * 100) where second_parent_user_id = first_parent_user_id;

select * from ministries;
update ministries set updated_at = CURRENT_TIMESTAMP where created_at > updated_at; 

select * from local_departments;
update local_departments set updated_at = CURRENT_TIMESTAMP where created_at > updated_at; 

select * from applications;
update applications set updated_at = CURRENT_TIMESTAMP where created_at > updated_at; 

select * from notifications;
update notifications set updated_at = CURRENT_TIMESTAMP where created_at > updated_at; 

select * from services_list;
update services_list set local_department_id = FLOOR(1 + RAND() * 200) where local_department_id = 0;


CREATE INDEX profiles_birthday_idx ON profiles(birthday);

CREATE INDEX registration_addresses_region_idx ON registration_addresses(region);
CREATE INDEX registration_addresses_city_idx ON registration_addresses(city);

CREATE INDEX residential_addresses_region_idx ON residential_addresses(region);
CREATE INDEX residential_addresses_city_idx ON residential_addresses(city);

CREATE INDEX user_transport_vehicles_state_registration_number_idx ON user_transport_vehicles(state_registration_number);

CREATE INDEX children_birthday_idx ON children(birthday);

CREATE INDEX local_departments_region_idx ON local_departments(region);


DELIMITER //

CREATE TRIGGER validate_parents_user_id_insert BEFORE INSERT ON children
FOR EACH ROW BEGIN 
	IF NEW.second_parent_user_id = NEW.first_parent_user_id THEN 
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = "Both parents' names are equal";
	END IF;
END//

CREATE TRIGGER validate_parents_user_id_update BEFORE UPDATE ON children
FOR EACH ROW BEGIN 
	IF NEW.second_parent_user_id = NEW.first_parent_user_id THEN 
		SIGNAL SQLSTATE '45001'
		SET MESSAGE_TEXT = "Both parents' names are equal";
	END IF;
END//

DELIMITER ;


DELIMITER //

DROP TRIGGER IF EXISTS middlename_exists;
CREATE TRIGGER middlename_exists BEFORE INSERT ON profiles
FOR EACH ROW 
BEGIN 
	IF NEW.middle_name IS NULL THEN 
		SIGNAL SQLSTATE '45002' SET MESSAGE_TEXT = 'Заполните поле "Отчество" или установите флаг "Без отчества"';
	END IF;
END//

DELIMITER ;

-- Представление, настраиваемое под каждый город.

CREATE OR REPLACE VIEW specific_city_population AS
	SELECT
		profiles.user_id, CONCAT_WS(' ', first_name, middle_name, last_name) AS name
	FROM profiles
	JOIN registration_addresses
	ON profiles.user_id = registration_addresses.user_id
	JOIN residential_addresses
	ON profiles.user_id = residential_addresses.user_id
	WHERE registration_addresses.city = 'Sarinahaven';	
	
	
DELIMITER //

DROP FUNCTION IF EXISTS get_vehicles//
CREATE FUNCTION get_vehicles(citizen_id INT UNSIGNED)
RETURNS TINYTEXT READS SQL DATA
BEGIN
	DECLARE vehicles TINYTEXT;
	SET vehicles = (SELECT CONCAT_WS(' ', name, 'Госномер:', state_registration_number, 
					'Свидетельство о регистрации:', series, `number`)
					FROM user_transport_vehicles
					WHERE user_id = citizen_id);
	RETURN vehucles;
END//

DELIMITER ;

DELIMITER //

DROP FUNCTION IF EXISTS get_last_notification//
CREATE FUNCTION get_last_notification(citizen_id INT UNSIGNED)
RETURNS TINYTEXT READS SQL DATA
BEGIN
	DECLARE notification TINYTEXT;
	SET notification = (SELECT CONCAT_WS(' ', 
							'Уведомление №', notifications.id, 
							'. От:', local_departments.name, 
							'. Текст:', notifications.body)
						FROM notifications
						JOIN local_departments
						ON notifications.from_local_department_id = local_departments.id
						WHERE to_user_id = citizen_id
						ORDER BY notifications.created_at DESC LIMIT 1);
	RETURN notification;
END//

DELIMITER ;


DELIMITER //

DROP PROCEDURE IF EXISTS add_child//
CREATE PROCEDURE add_child(firstname VARCHAR (100),
						   middlename VARCHAR (100),
						   lastname VARCHAR (100),
						   birthday DATE,
						   gender ENUM('m', 'f'),
						   OUT proc_result TINYTEXT)
 BEGIN
	DECLARE is_rollback BOOLEAN DEFAULT 0;
	DECLARE error_code VARCHAR(50);
	DECLARE error_text VARCHAR(255);
	DECLARE CONTINUE HANDLER FOR SQLEXCEPTION 
	
	BEGIN
		SET is_rollback = 1;
		GET stacked DIAGNOSTICS CONDITION 1
			error_code = RETURNED_SQLSTATE, 
			error_text = MESSAGE_TEXT;
		SET proc_result = CONCAT_WS(' ', 'ERROR CODE: ', error_code, '. Text: ', error_text);
	END;
	
	START TRANSACTION;
	INSERT INTO children (first_name, middle_name, last_name, birthday, gender)
		VALUES (firstname, middlename, lastname, birthday, gender);
	
	IF is_rollback THEN
		SET proc_result = 'ROLLBACK';
		ROLLBACK;
	ELSE
		SET proc_result = 'COMMIT';
		COMMIT;
	END IF;	
 END//
							
DELIMITER ;

CALL add_child('иван', 'иванович', 'иванов', '2019-12-15', 'm', @out_proc_data);


SELECT 
	profiles.user_id, CONCAT_WS(' ', first_name, middle_name, last_name) AS name,
	user_documents_types.name, user_documents.series, user_documents.`number`, 
	user_documents.issue_date, user_documents.issued_by
FROM profiles
JOIN user_documents
ON user_documents.user_id = profiles.user_id
JOIN user_documents_types
ON user_documents_types.id = user_documents.user_document_type_id
ORDER BY profiles.user_id;


SELECT 
	CONCAT_WS(' ', profiles.user_id, profiles.first_name, profiles.middle_name, profiles.last_name) AS name,
	COUNT(first_parent_user_id) AS total_children
FROM profiles
LEFT JOIN children
ON profiles.user_id = children.first_parent_user_id
	/*OR profiles.user_id = second_parent_user_id*/
GROUP BY name
ORDER BY total_children DESC 
LIMIT 20;

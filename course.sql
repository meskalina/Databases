/*
База данных предназначена для хранения данных 
о гражданах (резидентах) РФ, гражданах других государств (нерезидентах РФ), их детях, 
об услугах, предоставляемых гражданам государственными министертвами, агенствами, службами, учреждениями,
о местонахождении местных исполнительных отделений,
о заявлениях и обращениях граждан на получение услуг, уведомлениях граждан учреждениями.

Таблицы:

1. users. Таблица предназначена для хранения сведений об авторизационных данных, уникальном идентификаторе гражданина.

2. middlename_status. Таблица предназначена для определения наличия или отсутствия отчества у гражданина.

3. profile_status. Таблица предназначена для хранения сведений о статусе учетной записи гражданина.

4. profiles. Таблица предназначена для хранения сведений о гражданах.

5. registration_addresses. Таблица предназначена для хранения адреса регистрации гражданина.

6. residential_addresses. Таблица предназначена для хранения адреса проживания гражданина.

7. user_documents_types. Таблица предназначена для хранения сведений о типах документов граждан.

8. user_documents. Таблица предназначена для хранения данных о документах граждан.

9. user_transport_vehicles. Таблица предназначена для хранения сведений о транспортных средствах граждан.

10. children. Таблица предназначена для хранения сведений о детях граждан.

11. ministries. Таблица предназначена для хранения наименований федеральных государственных учреждений, предоставляющих услуги.

12. local_departments. Таблица предназначена для хранения сведений о местных отделениях госучреждений для получения услуг.

13. chelobitnayas. Таблица предназначена для хранения сведений о заявлениях, обращениях граждан за услугами.

14. notifications. Таблица предназначена для хранения сведений об уведомлениях граждан учреждениями о состоянии запрошенных услуг.

*/


DROP DATABASE IF EXISTS state_services;
CREATE DATABASE IF NOT EXISTS state_services;

USE state_services;

DROP TABLE IF EXISTS users;
CREATE TABLE IF NOT EXISTS users (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	email VARCHAR(255) NOT NULL UNIQUE COMMENT "Электронная почта",
  	phone VARCHAR(50) NOT NULL UNIQUE COMMENT "Телефон",
  	snils VARCHAR(30) NOT NULL UNIQUE COMMENT "СНИЛС",
  	created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Граждане";


DROP TABLE IF EXISTS middlename_status;
CREATE TABLE IF NOT EXISTS middlename_status (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	status VARCHAR(50) NOT NULL UNIQUE COMMENT "Название статуса",
  	created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Наличие отчества";


DROP TABLE IF EXISTS profile_status;
CREATE TABLE IF NOT EXISTS profile_status (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	status VARCHAR(100) NOT NULL UNIQUE COMMENT "Название статуса учетной записи",
  	created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Статусы профиля"; 

DROP TABLE IF EXISTS profiles;
CREATE TABLE IF NOT EXISTS profiles (
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя",
  profile_status_id INT UNSIGNED NOT NULL COMMENT "Ссылка на статус профиля",
  first_name VARCHAR(100) NOT NULL COMMENT "Имя пользователя",
  middlename_status_id INT UNSIGNED COMMENT "Идентификатор наличия/отстутствия отчества",
  middle_name VARCHAR(100) NOT NULL COMMENT "Отчество пользователя",
  last_name VARCHAR(100) NOT NULL COMMENT "Фамилия пользователя",
  gender CHAR(1) NOT NULL COMMENT "Пол",
  birthday DATE NOT NULL COMMENT "Дата рождения",
  birthplace VARCHAR(255) NOT NULL COMMENT "Место рождения",
  citizenship VARCHAR(255) NOT NULL COMMENT "Гражданство",
  series VARCHAR(50) NOT NULL COMMENT "Серия документа, подтверждающего личность",
  `number` VARCHAR(50) NOT NULL COMMENT "Номер документа, подтверждающего личность",
  issued_by_whom TINYTEXT NOT NULL COMMENT "Кем выдан", 
  issue_date DATE NOT NULL COMMENT "Дата выдачи",
  division_code VARCHAR(50) NOT NULL COMMENT "Код подразделения",
  photo_id INT UNSIGNED COMMENT "Ссылка на фотографию пользователя",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Профили"; 

DROP TABLE IF EXISTS registration_addresses;
CREATE TABLE IF NOT EXISTS registration_addresses (
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя",
  region VARCHAR(255) NOT NULL COMMENT "Регион",
  district VARCHAR(255) COMMENT "Район",
  city VARCHAR(255) COMMENT "Город",
  city_district VARCHAR(255) COMMENT "Внутригородской район",
  settlement VARCHAR(255) COMMENT "Населенный пункт",
  street VARCHAR(255) NOT NULL COMMENT "Улица",
  house VARCHAR(255) NOT NULL COMMENT "Дом",
  building VARCHAR(255) COMMENT "Корпус",
  flat VARCHAR(255) COMMENT "Квартира",
  zipcode INT UNSIGNED NOT NULL COMMENT "Почтовый индекс",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Адреса регистрации"; 

DROP TABLE IF EXISTS residential_addresses;
CREATE TABLE IF NOT EXISTS residential_addresses (
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя",
  region VARCHAR(255) NOT NULL  COMMENT "Регион",
  district VARCHAR(255) COMMENT "Район",
  city VARCHAR(255) COMMENT "Город",
  city_district VARCHAR(255) COMMENT "Внутригородской район",
  settlement VARCHAR(255) COMMENT "Населенный пункт",
  street VARCHAR(255) NOT NULL COMMENT "Улица",
  house VARCHAR(255) NOT NULL COMMENT "Дом",
  building VARCHAR(255) COMMENT "Корпус",
  flat VARCHAR(255) COMMENT "Квартира",
  zipcode INT UNSIGNED NOT NULL COMMENT "Почтовый индекс",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Адреса проживания"; 


DROP TABLE IF EXISTS user_documents_types;
CREATE TABLE IF NOT EXISTS user_documents_type (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE COMMENT "Название документа",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Типы документов пользователей"; 


DROP TABLE IF EXISTS user_documents;
CREATE TABLE IF NOT EXISTS user_documents (
  user_id INT UNSIGNED NOT NULL,
  user_document_type_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  series VARCHAR(50) NOT NULL COMMENT "Серия документа",
  `number` VARCHAR(50) NOT NULL COMMENT "Номер документа",
  issue_date DATE NOT NULL COMMENT "Дата выдачи",
  issued_by_whom TEXT NOT NULL COMMENT "Кем выдан",  
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Документы пользователей"; 


DROP TABLE IF EXISTS user_transport_vehicles;
CREATE TABLE IF NOT EXISTS user_transport_vehicles (
  user_id INT UNSIGNED NOT NULL,
  name VARCHAR(255) NOT NULL COMMENT "Название транспортного средства",
  series VARCHAR(50) NOT NULL COMMENT "Серия свидетельства о регистрации",
  `number` VARCHAR(50) NOT NULL COMMENT "Номер свидетельства о регистрации",
  state_registration_number VARCHAR(50) NOT NULL COMMENT "Государственный регистрационный номер",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Транспортные средства"; 


DROP TABLE IF EXISTS children;
CREATE TABLE IF NOT EXISTS children (
  first_parent_user_id INT UNSIGNED NOT NULL,
  second_parent_user_id INT UNSIGNED,  
  first_name VARCHAR(100) NOT NULL COMMENT "Имя ребенка",
  middlename_status_id INT UNSIGNED COMMENT "Идентификатор наличия/отсутствия отчества",
  middle_name VARCHAR(100) NOT NULL COMMENT "Отчество ребенка",
  last_name VARCHAR(100) NOT NULL COMMENT "Фамилия ребенка",  
  gender CHAR(1) NOT NULL COMMENT "Пол",
  birthday DATE NOT NULL COMMENT "Дата рождения",
  snils VARCHAR(30) UNIQUE COMMENT "СНИЛС",
  inn VARCHAR(30) UNIQUE COMMENT "ИНН",
  issue_country VARCHAR(50) NOT NULL COMMENT "Страна выдачи",
  series VARCHAR(50) NOT NULL COMMENT "Серия свидетельства о рождении",
  `number` VARCHAR(50) NOT NULL COMMENT "Номер свидетельства о рождении",
  issue_date DATE NOT NULL COMMENT "Дата выдачи",
  date_of_registration DATE COMMENT "Дата актовой записи",
  place_of_registration VARCHAR(255) NOT NULL COMMENT "Место государственной регистрации",
  omi_number VARCHAR(50) COMMENT "Номер полиса ОМС",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Информация о детях"; 


DROP TABLE IF EXISTS ministries;
CREATE TABLE IF NOT EXISTS ministries (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE COMMENT "Название министерства или службы",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Министерства и службы"; 


DROP TABLE IF EXISTS local_departments;
CREATE TABLE IF NOT EXISTS local_departments (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  ministries_id INT UNSIGNED NOT NULL COMMENT "Ссылка на министерство, к которому относится",
  region VARCHAR(255) NOT NULL COMMENT "Регион отделения",
  settlement VARCHAR(255) NOT NULL COMMENT "Населенный пункт (город, поселок...)",
  name VARCHAR(255) NOT NULL COMMENT "Название отделения",
  address TEXT NOT NULL COMMENT "Адрес отделения",
  phone VARCHAR(50) NOT NULL COMMENT "Телефон отделения",
  working_time TEXT NOT NULL COMMENT "Время работы",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Местные отделения"; 


DROP TABLE IF EXISTS chelobitnayas;
CREATE TABLE IF NOT EXISTS chelobitnayas (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя",
  local_department_id INT UNSIGNED NOT NULL COMMENT "Ссылка на местное отделение, куда подано обращение",
  body TEXT NOT NULL COMMENT "Содержимое обращения",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Заявления/обращения пользователя"; 


CREATE TABLE notifications (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  to_user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на получателя уведомления",
  from_local_department_id INT UNSIGNED NOT NULL COMMENT "Ссылка на отплавителя уведомления",
  body TEXT NOT NULL COMMENT "Текст уведомления",
  created_at DATETIME DEFAULT NOW() COMMENT "Время создания строки",
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Уведомления";


ALTER TABLE profiles
	ADD CONSTRAINT profiles_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users (id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
	ADD CONSTRAINT profiles_profile_status_id_fk
		FOREIGN KEY (profile_status_id) REFERENCES profile_status (id)
		ON DELETE NO ACTION
		ON UPDATE CASCADE
	ADD CONSTRAINT profiles_middlename_status_id_fk
		FOREIGN KEY (middlename_status_id) REFERENCES middlename_status (id)
		ON DELETE NO ACTION
		ON UPDATE CASCADE
;

ALTER TABLE registration_addresses
	ADD CONSTRAINT registration_addresses_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users (id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
;

ALTER TABLE residential_addresses
	ADD CONSTRAINT residential_addresses_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users (id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
;

ALTER TABLE user_documents
	ADD CONSTRAINT user_documents_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users (id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
	ADD CONSTRAINT user_documents_user_document_type_id_fk
		FOREIGN KEY (user_document_type_id) REFERENCES user_documents_types (id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
;

ALTER TABLE user_transport_vehicles
	ADD CONSTRAINT user_transport_vehicles_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users (id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
;

ALTER TABLE children
	ADD CONSTRAINT children_first_parent_user_id_fk
		FOREIGN KEY (first_parent_user_id) REFERENCES users (id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
	ADD CONSTRAINT children_second_parent_user_id_fk
		FOREIGN KEY (second_parent_user_id) REFERENCES users (id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
	ADD CONSTRAINT children_middlename_status_id_fk
		FOREIGN KEY (middlename_status_id) REFERENCES middlename_status (id)
		ON DELETE NO ACTION
		ON UPDATE CASCADE
;

ALTER TABLE local_departments
	ADD CONSTRAINT local_departments_ministries_id_fk
		FOREIGN KEY (ministries_id) REFERENCES ministries (id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
;

ALTER TABLE chelobitnayas
	ADD CONSTRAINT chelobitnayas_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users (id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
	ADD CONSTRAINT chelobitnayas_local_department_id_fk
		FOREIGN KEY (local_department_id) REFERENCES local_departments (id)
		ON DELETE NO ACTION
		ON UPDATE CASCADE
;

ALTER TABLE notifications
	ADD CONSTRAINT notifications_to_user_id_fk
		FOREIGN KEY (to_user_id) REFERENCES users (id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
	ADD CONSTRAINT notifications_from_local_department_id_fk
		FOREIGN KEY (from_local_department_id) REFERENCES local_departments (id)
		ON DELETE NO ACTION
		ON UPDATE CASCADE
;


INSERT INTO middlename_status (status) VALUES
	('Есть отчество'),
	('Нет отчества')
;

INSERT INTO profile_status (status) VALUES
	('Упрощенная учетная запись'),
	('Стандартная учетная запись'),
	('Подтверждённая учетная запись')
;

INSERT INTO user_documents_types (name) VALUES
	('ИНН'),
	('Свидетельство о рождении'),
	('Водительское удостоверение'),
	('Полис ОМС'),
	('Заграничный паспорт'),
	('Военный билет')
;

/*
 Вопросы:
 1. В какой таблице обычно хранится пароль к учётной записи?
 2. Можно ли заполнять БД с помощью filldb.info?
 3. Какие недочёты нужно сейчас поправить в структуре БД до конечной сдачи курсовой?
 4. Надо ли в описании БД описывать, за что отвечает каждый столбец каждой таблицы?
 */

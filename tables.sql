/*
База данных предназначена для хранения данных 
о гражданах (резидентах) РФ, гражданах других государств (нерезидентах РФ), их детях, 
об услугах, предоставляемых гражданам государственными министертвами, агенствами, службами, учреждениями,
о местонахождении местных исполнительных отделений,
о заявлениях и обращениях граждан на получение услуг, уведомлениях граждан учреждениями.

Таблицы:

1. users. Таблица предназначена для хранения сведений об авторизационных данных, уникальном идентификаторе гражданина.

2. profile_status. Таблица предназначена для хранения сведений о статусе учетной записи гражданина.

3. profiles. Таблица предназначена для хранения сведений о гражданах.

4. registration_addresses. Таблица предназначена для хранения адреса регистрации гражданина.

5. residential_addresses. Таблица предназначена для хранения адреса проживания гражданина.

6. user_documents_types. Таблица предназначена для хранения сведений о типах документов граждан.

7. user_documents. Таблица предназначена для хранения данных о документах граждан.

8. user_transport_vehicles. Таблица предназначена для хранения сведений о транспортных средствах граждан.

9. children. Таблица предназначена для хранения сведений о детях граждан.

10. ministries. Таблица предназначена для хранения наименований федеральных государственных учреждений, предоставляющих услуги.

11. local_departments. Таблица предназначена для хранения сведений о местных отделениях госучреждений для получения услуг.

12. applications. Таблица предназначена для хранения сведений о заявлениях, обращениях граждан за услугами.

13. notifications. Таблица предназначена для хранения сведений об уведомлениях граждан учреждениями о состоянии запрошенных услуг.

14. services_list. Таблица предназначена для хранения сведений о предлагаемых услугах.

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
  	`password` VARCHAR(255) NOT NULL COMMENT "Пароль к учетной записи",
  	created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Граждане";


DROP TABLE IF EXISTS profiles;
CREATE TABLE IF NOT EXISTS profiles (
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя",
  profile_status ENUM('Упрощенная учетная запись', 
  					  'Стандартная учетная запись', 
  					  'Подтверждённая учетная запись') NOT NULL COMMENT "Статус профиля",
  first_name VARCHAR(100) NOT NULL COMMENT "Имя пользователя",
  middle_name VARCHAR(100) COMMENT "Отчество пользователя",
  last_name VARCHAR(100) NOT NULL COMMENT "Фамилия пользователя",
  gender ENUM('m', 'f') NOT NULL COMMENT "Пол",
  birthday DATE NOT NULL COMMENT "Дата рождения",
  birthplace VARCHAR(255) NOT NULL COMMENT "Место рождения",
  citizenship VARCHAR(255) NOT NULL COMMENT "Гражданство",
  series VARCHAR(50) NOT NULL COMMENT "Серия документа, подтверждающего личность",
  `number` VARCHAR(50) NOT NULL COMMENT "Номер документа, подтверждающего личность",
  issued_by TINYTEXT NOT NULL COMMENT "Кем выдан", 
  issue_date DATE NOT NULL COMMENT "Дата выдачи",
  division_code VARCHAR(20) NOT NULL COMMENT "Код подразделения",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Профили"; 

DROP TABLE IF EXISTS registration_addresses;
CREATE TABLE IF NOT EXISTS registration_addresses (
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя",
  region VARCHAR(255) NOT NULL COMMENT "Регион",
  district VARCHAR(255) COMMENT "Район",
  city VARCHAR(100) COMMENT "Город",
  city_district VARCHAR(255) COMMENT "Внутригородской район",
  settlement VARCHAR(100) COMMENT "Населенный пункт",
  street VARCHAR(100) NOT NULL COMMENT "Улица",
  house VARCHAR(20) NOT NULL COMMENT "Дом",
  building VARCHAR(20) COMMENT "Корпус",
  flat VARCHAR(10) COMMENT "Квартира",
  zipcode MEDIUMINT UNSIGNED NOT NULL COMMENT "Почтовый индекс",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Адреса регистрации"; 

DROP TABLE IF EXISTS residential_addresses;
CREATE TABLE IF NOT EXISTS residential_addresses (
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя",
  region VARCHAR(255) NOT NULL  COMMENT "Регион",
  district VARCHAR(255) COMMENT "Район",
  city VARCHAR(100) COMMENT "Город",
  city_district VARCHAR(255) COMMENT "Внутригородской район",
  settlement VARCHAR(100) COMMENT "Населенный пункт",
  street VARCHAR(100) NOT NULL COMMENT "Улица",
  house VARCHAR(20) NOT NULL COMMENT "Дом",
  building VARCHAR(20) COMMENT "Корпус",
  flat VARCHAR(10) COMMENT "Квартира",
  zipcode MEDIUMINT UNSIGNED NOT NULL COMMENT "Почтовый индекс",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Адреса проживания"; 


DROP TABLE IF EXISTS user_documents_types;
CREATE TABLE IF NOT EXISTS user_documents_types (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE COMMENT "Название документа",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Типы документов пользователей"; 


DROP TABLE IF EXISTS user_documents;
CREATE TABLE IF NOT EXISTS user_documents (
  user_id INT UNSIGNED NOT NULL,
  user_document_type_id INT UNSIGNED NOT NULL,
  series VARCHAR(50) NOT NULL COMMENT "Серия документа",
  `number` VARCHAR(50) NOT NULL COMMENT "Номер документа",
  issue_date DATE NOT NULL COMMENT "Дата выдачи",
  issued_by TEXT NOT NULL COMMENT "Кем выдан",  
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
  middle_name VARCHAR(100) COMMENT "Отчество ребенка",
  last_name VARCHAR(100) NOT NULL COMMENT "Фамилия ребенка",  
  gender ENUM('m', 'f') NOT NULL COMMENT "Пол",
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


DROP TABLE IF EXISTS applications;
CREATE TABLE IF NOT EXISTS applications (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя",
  local_department_id INT UNSIGNED NOT NULL COMMENT "Ссылка на местное отделение, куда подано обращение",
  body TEXT NOT NULL COMMENT "Содержимое обращения",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Заявления/обращения пользователя"; 


DROP TABLE IF EXISTS notifications;
CREATE TABLE notifications (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  to_user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на получателя уведомления",
  from_local_department_id INT UNSIGNED NOT NULL COMMENT "Ссылка на отправителя уведомления",
  body TEXT NOT NULL COMMENT "Текст уведомления",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Уведомления";


DROP TABLE IF EXISTS services_list;
CREATE TABLE IF NOT EXISTS services_list (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  local_department_id INT UNSIGNED NOT NULL COMMENT "Ссылка на местное отделение, которое предоставляет услуги",
  name VARCHAR(255) NOT NULL COMMENT "Название услуги",
  body TINYTEXT NOT NULL COMMENT "Описание услуги",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки", 
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Перечень предоставляемых услуг"; 

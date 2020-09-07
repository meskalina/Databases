/*
���� ������ ������������� ��� �������� ������ 
� ��������� (����������) ��, ��������� ������ ���������� (������������ ��), �� �����, 
�� �������, ��������������� ��������� ���������������� �������������, ����������, ��������, ������������,
� ��������������� ������� �������������� ���������,
� ���������� � ���������� ������� �� ��������� �����, ������������ ������� ������������.

�������:

1. users. ������� ������������� ��� �������� �������� �� ��������������� ������, ���������� �������������� ����������.

2. profile_status. ������� ������������� ��� �������� �������� � ������� ������� ������ ����������.

3. profiles. ������� ������������� ��� �������� �������� � ���������.

4. registration_addresses. ������� ������������� ��� �������� ������ ����������� ����������.

5. residential_addresses. ������� ������������� ��� �������� ������ ���������� ����������.

6. user_documents_types. ������� ������������� ��� �������� �������� � ����� ���������� �������.

7. user_documents. ������� ������������� ��� �������� ������ � ���������� �������.

8. user_transport_vehicles. ������� ������������� ��� �������� �������� � ������������ ��������� �������.

9. children. ������� ������������� ��� �������� �������� � ����� �������.

10. ministries. ������� ������������� ��� �������� ������������ ����������� ��������������� ����������, ��������������� ������.

11. local_departments. ������� ������������� ��� �������� �������� � ������� ���������� ������������� ��� ��������� �����.

12. applications. ������� ������������� ��� �������� �������� � ����������, ���������� ������� �� ��������.

13. notifications. ������� ������������� ��� �������� �������� �� ������������ ������� ������������ � ��������� ����������� �����.

*/


DROP DATABASE IF EXISTS state_services;
CREATE DATABASE IF NOT EXISTS state_services;

USE state_services;

DROP TABLE IF EXISTS users;
CREATE TABLE IF NOT EXISTS users (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	email VARCHAR(255) NOT NULL UNIQUE COMMENT "����������� �����",
  	phone VARCHAR(50) NOT NULL UNIQUE COMMENT "�������",
  	snils VARCHAR(30) NOT NULL UNIQUE COMMENT "�����",
  	password VARCHAR(255) NOT NULL COMMENT "������ � ������� ������",
  	created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "����� �������� ������",  
  	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����� ���������� ������"
) COMMENT "��������";


DROP TABLE IF EXISTS profile_status;
CREATE TABLE IF NOT EXISTS profile_status (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	status VARCHAR(100) NOT NULL UNIQUE COMMENT "�������� ������� ������� ������",
  	created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "����� �������� ������",  
  	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����� ���������� ������"
) COMMENT "������� �������"; 

DROP TABLE IF EXISTS profiles;
CREATE TABLE IF NOT EXISTS profiles (
  user_id INT UNSIGNED NOT NULL COMMENT "������ �� ������������",
  profile_status_id INT UNSIGNED NOT NULL COMMENT "������ �� ������ �������",
  first_name VARCHAR(100) NOT NULL COMMENT "��� ������������",
  middle_name VARCHAR(100) COMMENT "�������� ������������",
  last_name VARCHAR(100) NOT NULL COMMENT "������� ������������",
  gender ENUM('m', 'f') NOT NULL COMMENT "���",
  birthday DATE NOT NULL COMMENT "���� ��������",
  birthplace VARCHAR(255) NOT NULL COMMENT "����� ��������",
  citizenship VARCHAR(255) NOT NULL COMMENT "�����������",
  series VARCHAR(50) NOT NULL COMMENT "����� ���������, ��������������� ��������",
  `number` VARCHAR(50) NOT NULL COMMENT "����� ���������, ��������������� ��������",
  issued_by TINYTEXT NOT NULL COMMENT "��� �����", 
  issue_date DATE NOT NULL COMMENT "���� ������",
  division_code VARCHAR(50) NOT NULL COMMENT "��� �������������",
  photo_id INT UNSIGNED COMMENT "������ �� ���������� ������������",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "����� �������� ������",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����� ���������� ������"
) COMMENT "�������"; 

DROP TABLE IF EXISTS registration_addresses;
CREATE TABLE IF NOT EXISTS registration_addresses (
  user_id INT UNSIGNED NOT NULL COMMENT "������ �� ������������",
  region VARCHAR(255) NOT NULL COMMENT "������",
  district VARCHAR(255) COMMENT "�����",
  city VARCHAR(255) COMMENT "�����",
  city_district VARCHAR(255) COMMENT "��������������� �����",
  settlement VARCHAR(255) COMMENT "���������� �����",
  street VARCHAR(255) NOT NULL COMMENT "�����",
  house VARCHAR(255) NOT NULL COMMENT "���",
  building VARCHAR(255) COMMENT "������",
  flat VARCHAR(255) COMMENT "��������",
  zipcode INT UNSIGNED NOT NULL COMMENT "�������� ������",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "����� �������� ������",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����� ���������� ������"
) COMMENT "������ �����������"; 

DROP TABLE IF EXISTS residential_addresses;
CREATE TABLE IF NOT EXISTS residential_addresses (
  user_id INT UNSIGNED NOT NULL COMMENT "������ �� ������������",
  region VARCHAR(255) NOT NULL  COMMENT "������",
  district VARCHAR(255) COMMENT "�����",
  city VARCHAR(255) COMMENT "�����",
  city_district VARCHAR(255) COMMENT "��������������� �����",
  settlement VARCHAR(255) COMMENT "���������� �����",
  street VARCHAR(255) NOT NULL COMMENT "�����",
  house VARCHAR(255) NOT NULL COMMENT "���",
  building VARCHAR(255) COMMENT "������",
  flat VARCHAR(255) COMMENT "��������",
  zipcode INT UNSIGNED NOT NULL COMMENT "�������� ������",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "����� �������� ������",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����� ���������� ������"
) COMMENT "������ ����������"; 


DROP TABLE IF EXISTS user_documents_types;
CREATE TABLE IF NOT EXISTS user_documents_types (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE COMMENT "�������� ���������",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "����� �������� ������",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����� ���������� ������"
) COMMENT "���� ���������� �������������"; 


DROP TABLE IF EXISTS user_documents;
CREATE TABLE IF NOT EXISTS user_documents (
  user_id INT UNSIGNED NOT NULL,
  user_document_type_id INT UNSIGNED NOT NULL,
  series VARCHAR(50) NOT NULL COMMENT "����� ���������",
  `number` VARCHAR(50) NOT NULL COMMENT "����� ���������",
  issue_date DATE NOT NULL COMMENT "���� ������",
  issued_by TEXT NOT NULL COMMENT "��� �����",  
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "����� �������� ������",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����� ���������� ������"
) COMMENT "��������� �������������"; 


DROP TABLE IF EXISTS user_transport_vehicles;
CREATE TABLE IF NOT EXISTS user_transport_vehicles (
  user_id INT UNSIGNED NOT NULL,
  name VARCHAR(255) NOT NULL COMMENT "�������� ������������� ��������",
  series VARCHAR(50) NOT NULL COMMENT "����� ������������� � �����������",
  `number` VARCHAR(50) NOT NULL COMMENT "����� ������������� � �����������",
  state_registration_number VARCHAR(50) NOT NULL COMMENT "��������������� ��������������� �����",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "����� �������� ������",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����� ���������� ������"
) COMMENT "������������ ��������"; 


DROP TABLE IF EXISTS children;
CREATE TABLE IF NOT EXISTS children (
  first_parent_user_id INT UNSIGNED NOT NULL,
  second_parent_user_id INT UNSIGNED,  
  first_name VARCHAR(100) NOT NULL COMMENT "��� �������",
  middle_name VARCHAR(100) COMMENT "�������� �������",
  last_name VARCHAR(100) NOT NULL COMMENT "������� �������",  
  gender ENUM('m', 'f') NOT NULL COMMENT "���",
  birthday DATE NOT NULL COMMENT "���� ��������",
  snils VARCHAR(30) UNIQUE COMMENT "�����",
  inn VARCHAR(30) UNIQUE COMMENT "���",
  issue_country VARCHAR(50) NOT NULL COMMENT "������ ������",
  series VARCHAR(50) NOT NULL COMMENT "����� ������������� � ��������",
  `number` VARCHAR(50) NOT NULL COMMENT "����� ������������� � ��������",
  issue_date DATE NOT NULL COMMENT "���� ������",
  date_of_registration DATE COMMENT "���� ������� ������",
  place_of_registration VARCHAR(255) NOT NULL COMMENT "����� ��������������� �����������",
  omi_number VARCHAR(50) COMMENT "����� ������ ���",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "����� �������� ������",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����� ���������� ������"
) COMMENT "���������� � �����"; 


DROP TABLE IF EXISTS ministries;
CREATE TABLE IF NOT EXISTS ministries (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE COMMENT "�������� ������������ ��� ������",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "����� �������� ������",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����� ���������� ������"
) COMMENT "������������ � ������"; 


DROP TABLE IF EXISTS local_departments;
CREATE TABLE IF NOT EXISTS local_departments (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  ministries_id INT UNSIGNED NOT NULL COMMENT "������ �� ������������, � �������� ���������",
  region VARCHAR(255) NOT NULL COMMENT "������ ���������",
  settlement VARCHAR(255) NOT NULL COMMENT "���������� ����� (�����, �������...)",
  name VARCHAR(255) NOT NULL COMMENT "�������� ���������",
  address TEXT NOT NULL COMMENT "����� ���������",
  phone VARCHAR(50) NOT NULL COMMENT "������� ���������",
  working_time TEXT NOT NULL COMMENT "����� ������",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "����� �������� ������",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����� ���������� ������"
) COMMENT "������� ���������"; 


DROP TABLE IF EXISTS applications;
CREATE TABLE IF NOT EXISTS applications (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL COMMENT "������ �� ������������",
  local_department_id INT UNSIGNED NOT NULL COMMENT "������ �� ������� ���������, ���� ������ ���������",
  body TEXT NOT NULL COMMENT "���������� ���������",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "����� �������� ������",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����� ���������� ������"
) COMMENT "���������/��������� ������������"; 


CREATE TABLE notifications (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  to_user_id INT UNSIGNED NOT NULL COMMENT "������ �� ���������� �����������",
  from_local_department_id INT UNSIGNED NOT NULL COMMENT "������ �� ����������� �����������",
  body TEXT NOT NULL COMMENT "����� �����������",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "����� �������� ������",
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����� ���������� ������"
) COMMENT "�����������";







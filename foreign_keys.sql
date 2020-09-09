ALTER TABLE profiles
	ADD CONSTRAINT profiles_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users (id)
		ON DELETE CASCADE
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
		ON UPDATE CASCADE,
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
		ON UPDATE CASCADE,
	ADD CONSTRAINT children_second_parent_user_id_fk
		FOREIGN KEY (second_parent_user_id) REFERENCES users (id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
;

ALTER TABLE local_departments
	ADD CONSTRAINT local_departments_ministries_id_fk
		FOREIGN KEY (ministries_id) REFERENCES ministries (id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
;

ALTER TABLE applications
	ADD CONSTRAINT applications_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users (id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	ADD CONSTRAINT applications_local_department_id_fk
		FOREIGN KEY (local_department_id) REFERENCES local_departments (id)
		ON DELETE NO ACTION
		ON UPDATE CASCADE
;

ALTER TABLE notifications
	ADD CONSTRAINT notifications_to_user_id_fk
		FOREIGN KEY (to_user_id) REFERENCES users (id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	ADD CONSTRAINT notifications_from_local_department_id_fk
		FOREIGN KEY (from_local_department_id) REFERENCES local_departments (id)
		ON DELETE NO ACTION
		ON UPDATE CASCADE
;

ALTER TABLE services_list
	ADD CONSTRAINT services_list_local_department_id_fk
		FOREIGN KEY (local_department_id) REFERENCES local_departments (id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
;

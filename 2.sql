create database if not exists example;
use example;
create table if not exists users (
	id serial,
	name varchar(255)
);
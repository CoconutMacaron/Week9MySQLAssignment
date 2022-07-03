create database if not exists members;

use members;

drop table if exists comments;
drop table if exists posts;
drop table if exists members;

create table members (
	id int(10) not null auto_increment,
	username varchar(20) not null,
	email varchar(25) not null,
	password varchar(25) not null,
	primary key (id)
);

create table posts (
	id int(10) not null auto_increment,
	member_id int(10) not null,
	username varchar(20) not null,
	date_time datetime default current_timestamp,
	message varchar(255) not null,
	post_id varchar(10) not null,
	primary key (id),
	foreign key (member_id) references members(id)
);

create table comments (
	id int(10) not null auto_increment,
	member_id int(10) not null,
	post_id int(10) not null,
	username varchar(20) not null,
	date_time datetime default current_timestamp,
	message varchar(255) not null,
	comment_id varchar(10) not null,
	primary key (id),
	foreign key (member_id) references members(id),
	foreign key (post_id) references posts(id)
);
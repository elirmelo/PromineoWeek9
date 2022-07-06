create database if not exists SocialMedia;

use SocialMedia;

drop table if exists Comments;
drop table if exists Post;
drop table if exists User;

create table User (
	User_id int(11) not null auto_increment,
	User_name varchar(20) not null,
	User_password varchar(20) not null,
	User_email varchar(50),
	primary key (User_id)
	
);

create table Post (
	Post_id int(11) not null auto_increment,
	User_id int(11) not null,
	Post_text text(250),
	Post_date date,
	Post_time time,
	primary key (Post_id),
	foreign key (User_id) references User(User_id)
);

create table Comments (
	Comments_id int(11) not null auto_increment,
	User_id int(11) not null,
	Post_id int(11) not null,
	Comment text(5000),
	Comment_date date,
	Comment_time time,
	primary key (Comments_id),
	foreign key (User_id) references User(User_id),
	foreign key (Post_id) references Post(Post_id)

);

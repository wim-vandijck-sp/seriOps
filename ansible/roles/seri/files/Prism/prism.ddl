--
--

DROP DATABASE prism;

CREATE DATABASE IF NOT EXISTS prism CHARACTER SET utf8;
create user if not exists 'prism' identified by 'prism';
grant all on prism.* to 'prism';

USE prism;

    create table prism.users (
        login varchar(30) not null unique,
        description varchar(1024),
        first varchar(128),
        last varchar(128),
        groups varchar(128),
        password varchar(26),
        status char(1),
	locked char(1),
       	lastLogin DATE, 
        primary key (login)
    ) ENGINE=InnoDB;
	
insert into users (login,first,last,groups,password,status,locked,lastLogin) values ('PRISM ADMIN','','','User,Manager,Super','password','A','N','2012-11-01');
insert into users (login,first,last,groups,password,status,locked,lastLogin) values ('whenderson','Walter','Henderson','User,Manager,Super','password','A','Y','2012-01-01');
insert into users (login,first,last,groups,password,status,locked,lastLogin) value ('Janet.Washington','Washington','Janet','User,Manager, Internal_Employee, Create_Reports, Modify_Reports, View_Reports','password','A','N','2012-01-01');


    create table prism.groups (
        name varchar(30) not null unique,
        description varchar(1024),
        primary key (name)
    ) ENGINE=InnoDB;
	
insert into groups (name,description) values ('User','This group is used to assign basic user access to PRISM');
insert into groups (name,description) values ('Manager','This group is used to assign manager access to PRISM');
insert into groups (name,description) values ('Super','This is a privileged group with superuser access to PRISM');
insert into groups (name,description) values ('Contract_Employee', 'Access to external-use systems');
insert into groups (name,description) values ('Create_Reports', 'View, Modify and Create Accounting report runs');
insert into groups (name,description) values ('Internal_Employee', 'Access to internal-use-only systems');
insert into groups (name,description) values ('Modify_Reports', 'View and Modify existing Accounting report runs');
insert into groups (name,description) values ('View_Reports', 'View-only access to all existing Accounting report data');






CREATE TABLE users(
	name varchar(20) not null,
    id varchar(20) primary key,
    pw varchar(20) not null,
    phone1 char(10),
    phone2 char(10),
    phone3 char(10),
    gender char(10)
);


SELECT * FROM jsp_practice2.users;
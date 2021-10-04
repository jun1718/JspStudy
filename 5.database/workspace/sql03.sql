CREATE TABLE users(
	name varchar(20) not null,
    id varchar(20) primary key,
    pw varchar(20) not null,
    phone1 int,
    phone2 int,
    phone3 int,
    gender char(10)
);


select * from users;


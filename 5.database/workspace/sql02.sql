DROP TABLE member;

CREATE table member (
	id varchar(20) primary key,
    pw varchar(20) not null, 
    name varchar(30) not null,
    email varchar(80)
);

SELECT * FROM member;
SELECT id FROM member;

SELECT *FROM member;


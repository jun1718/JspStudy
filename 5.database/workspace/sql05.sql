CREATE TABLE izone_member(
	user_id varchar(20) primary key,
    user_pw varchar(20) not null,
    user_name varchar(12) not null,
    user_email varchar(50) not null,
    user_reg_date datetime default current_timestamp 
);



SELECT*FROM izone_member;

INSERT INTO izone_member (user_id, user_pw, user_name, user_email)
VALUES('abc1234', 'aaa1234!', '김말이', 'kim@naver.com');

SELECT*FROM izone_member;

SELECT user_id FROM izone_member WHERE user_id = 'abc12314';

SELECT * from users;

DROP table izone_member;

CREATE  DATABASE jsp_practice2 default character set utf8;

CREATE USER 'jsp1' identified by 'jsp1';

GRANT ALL PRIVILEGES ON jsp_practice2.* to 'jsp1';

CREATE table member (
	id varchar(20) primary key,
    pw varchar(20) not null, 
    name varchar(30) not null,
    email varchar(80)
);


SELECT * from member;

INSERT INTO member(id, pw, name)
VALUES ('abc123', '1234', '홍길동');

SELECT * FROM member;

INSERT INTO member
VALUES ('abc1231', '1234', '이순신', 'leesoonshin@naver.com');

SELECT * FROM member;
INSERT INTO member
VALUES ('abc1232', '1234', '붓다', 'leesoonshin@naver.com');
INSERT INTO member
VALUES ('abc1233', '1234', '안창호', 'leesoonshin@naver.com');
INSERT INTO member
VALUES ('abc1234', '1234', '김정호', 'leesoonshin@naver.com');
INSERT INTO member
VALUES ('abc1235', '1234', '왕건', 'leesoonshin@naver.com');
INSERT INTO member
VALUES ('abc1236', '1234', '이문세', 'leesoonshin@naver.com');
INSERT INTO member
VALUES ('abc1237', '1234', '문종', 'leesoonshin@naver.com');


SELECT * FROM member;

UPDATE jsp_practice2.member
SET
name = "신사임당",
email = 'shin012@daum.net'
WHERE id = 'abc1231';

SELECT * FROM member;

UPDATE jsp_practice2.member
SET 
name = '손흥민',
pw = '7777'
WHERE id = 'abc1232';

SELECT * FROM jsp_practice2.member;

DELETE FROM jsp_practice2.member WHERE id = 'abc1233';

SELECT * FROM jsp_practice2.member;
SELECT id FROM jsp_practice2.member;

SELECT name, email FROM jsp_practice2.member;

SELECT email FROM jsp_practice2.member;

SELECT email FROM jsp_practice2.member
WHERE ID = 'abc1234';

SELECT pw FROM jsp_practice2.member
WHERE id = 'abc1231';

SELECT * FROM jsp_practice2.member
WHERE name LIKE '이%';

SELECT * FROM jsp_practice2.member
WHERE name LIKE '%민';

SELECT * FROM jsp_practice2.member
WHERE name LIKE '%문%';

SELECT * FROM jsp_practice2.member
WHERE email LIKE '%naver%';

SELECT * FROM jsp_practice2.member ORDER BY name ASC;

SELECT * FROM jsp_practice2.member ORDER BY id DESC;


INSERT INTO jsp_practice2.member 
VALUE('abc4444', '0000', '손오공', 'son@gmail.com');
SELECT * FROM jsp_practice2.member;

UPDATE jsp_practice2.member 
set 
name = '손흥민'
WHERE id = 'abc4444';

SELECT * FROM jsp_practice2.member ORDER BY name ASC, id ASC;

SELECT * FROM jsp_practice2.member ORDER BY name ASC, id DESC;

SELECT * FROM jsp_practice2.member
WHERE name like '손%'
ORDER BY id ASC;


INSERT INTO jsp_practice2.member
VALUES('가가가가', '1234', '가가가가', '가가가가');

COMMIT;

INSERT INTO jsp_practice2.member
VALUES('나나나나', '1234', '나나나나', '나나나나');

INSERT INTO jsp_practice2.member
VALUES('다다다다', '1234', '다다다다', '다다다다');

SELECT * FROM jsp_practice2.member;

ROLLBACK;

SELECT * FROM jsp_practice2.member;

DROP TABLE member;

TRUNCATE TABLE jsp_practice2.member;


ALTER TABLE jsp_practice2.member ADD address varchar(10);

ALTER TABLE jsp_practice2.member DROP COLUMN email;
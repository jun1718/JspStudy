#데이터베이스 생성명령
#워크벤치에서 sql문 실행명령 : 컨트롤 + enter

CREATE DATABASE jsp_practice default character set utf8;

#관리자 계정명: root // 비밀번호: mysql
#DB사용자 계정생성_앞 jsp 아이디, 뒤 jsp 비번을 뜻함
CREATE USER 'jsp' identified by 'jsp';

#사용자에게 권한 부여_모든권한 부여 위에 만든 jsp 계정에게
GRANT ALL PRIVILEGES ON jsp_practice.* to 'jsp';

#테이블 생성명령
#primary key - 컬럼의 주요키를 뜻하며 중복 데이터를 방지함
#not null - 데이터에 null 값이 들어오는 것을 방지
CREATE TABLE member(
	id varchar(20) primary key,
    pw varchar(20) not null,  
    name varchar(30) not null,
    email varchar(80)
);

#테이블조회
select * from member;

#데이터 저장 INSERT
INSERT INTO member (id, pw, name)
VALUES('abc123', '1234', '홍길동');

select * from member;

INSERT INTO member
VALUES ('def4561', '4433', '이순신', 'aaa@bbb.com');
INSERT INTO member
VALUES ('def4562', '4433', '이순신', 'aaa@bbb.com');
INSERT INTO member
VALUES ('def4563', '4433', '이순신', 'aaa@bbb.com');
INSERT INTO member
VALUES ('def4564', '4433', '이순신', 'aaa@bbb.com');
INSERT INTO member
VALUES ('def4565', '4433', '이순신', 'aaa@bbb.com');
INSERT INTO member
VALUES ('def4566', '4433', '이순신', 'aaa@bbb.com');
INSERT INTO member
VALUES ('def4567', '4433', '이순신', 'aaa@bbb.com');

select * from member;


#데이터 수정 UPDATE
UPDATE member
SET 
name ='신사임당',
email = 'shin012@daum.net'
WHERE id = 'def456';

UPDATE member
SET 
name = '손흥민',
pw = '7777'
WHERE id = 'def4561';


#데이터 삭제 DELETE
DELETE FROM member WHERE id = 'def4562';



select * from member;

#데이터 조회 SELECT
SELECT id FROM member;
SELECT name, email FROM member;
SELECT * FROM member;

SELECT email FROM member; #email field의 모든 벨류 출력
SELECT email FROM member
WHERE ID = 'def456'; #신사임당의 email만보기

#ID가 bbb456인 회원의 비밀번호를 조회
SELECT pw FROM member
WHERE id = 'def456';

#이름이 이로 시작하는사람 조회
SELECT * FROM member
WHERE name LIKE '이%';

#이름이 민으로 끝나는 사람 조회
SELECT * FROM member
WHERE name LIKE '%민';

#이름이 중간에 성이 들어가는 사람 조회
SELECT * FROM member
WHERE name LIKE '%성%';

#email이 naver인 사람의 이름정보를 조회하세요
SELECT name FROM member
where email LIKE '%naver%';

#검색 데이터 정렬 
#member 객체의 데이터를 이름의 오름차순으로 정렬
SELECT * FROM member ORDER BY name ASC;

#member 객체의 데이터를 id의 내림차순으로 정렬
SELECT * FROM member ORDER BY id DESC;

#이름을 오름차순정렬, 같은 이름은 id의 오름차순정렬
SELECT * FROM member ORDER BY name ASC;
SELECT * FROM member ORDER BY name ASC, id ASC;

#이름을 오름차순정렬, 같은 이름은 id의 내림차순 정렬
SELECT * FROM member ORDER BY name ASC, id DESC;

#이름이 '이'로 시작하는 회원의 모든 컬럼을 ID오름차순으로 정렬
select * from member 
where name like '이%'
ORDER BY id ASC;


#트랜잭션 처리 

INSERT INTO member VALUES ('가가가', '1234', '가가가', '가가가');

COMMIT;
INSERT INTO member VALUES('나나나', '1234', '나나나', '나나나');
INSERT INTO member VALUES('다다다', '1234', '다다다', '다다다');

SELECT * FROM MEMBER;

ROLLBACK; #이거 후 SELECT 하면 나, 다 사라짐 트랜잭션 완료
SELECT * FROM MEMBER;
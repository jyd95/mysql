-- 0604--
-- use db_tenco_market;
-- use mydb;
drop table member;
-- 멤버 테이블 설계
-- unique 제약 설정
create table member(
	id int primary key auto_increment,
    name varchar(20) not null,
    email varchar(50) unique,
    phone varchar(20),
    address varchar(100) not null
);

desc member;

INSERT INTO member (name, email, phone, address)
VALUES 
('홍길동', 'hong@test.com', '010-1234-5678', '서울시 강남구'),
('김영희', 'kim@test.com', '010-2345-6789', '서울시 서초구'),
('이철수', 'lee@test.com', '010-3456-7890', '서울시 종로구'),
('박민지', 'park@test.com', '010-4567-8901', '서울시 마포구'),
('최재영', 'choi@test.com', '010-5678-9012', '서울시 강서구'),
('강영식', 'kang@test.com', '010-6789-0123', '서울시 송파구');

select * from member;

-- 문제 : id 2인 회원의 전화번호를 010-2222-2222로 수정하시오

update member
set phone = '010-2222-2222' 
where id = 2;

-- 문제 : id가 5인 회원의 이메일과 주소를 'a@naver.com', '부산시 진구' 로 수정 

update member
set email = 'a@naver.com' , address = '부산시 진구'
where id = 5;

-- 문제 id 1번인 회원의 email을 a@naver.com 으로 수정 하시오
-- email 컬럼에 a@naver.com 이 이미 들어가 있어 업데이트 불가
-- unique 제약이라 중복을 허용하지 않음

update member
set email = 'a@naver.com'
where id = 1;


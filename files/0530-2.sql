-- 테이블 삭제
-- drop table student;

-- 테이블 생성시 default 값을 제약 설정하는 방법

create table student(
	student_id int primary key,
    name varchar(50) not null,
    grade int not null,
    major varchar(50) default '미정' not null
);

desc student;

-- insert 명 기본 문구 모양
-- insert into 테이블명(컬럼명1, 컬럼명2, ...)
-- values(값1, 값2, 값3, ...);

-- 모든 컬럼을 다 넣을 거라면 
-- insert into 테이블명 values(값1, 값2, ...); - 컬럼명 생략 가능

insert into student(student_id, name, grade, major)
values(1, '홍길동', 3, '컴퓨터공학과');

-- default 제약을 사용했을 때 값을 넣는 방법 1
insert into student(student_id, name, grade)
values(2, '김철수', 1);

-- 컬럼 생략 버전
insert into student values(3, '이영희', 4, '경영학과');

-- default 제약을 사용했을 때 값을 넣는 방법 2
insert into student(student_id, name, grade, major)
values(4, '야스오', 2, default);

select * from student;

-- 실무에서 delete from 구문을 사용 할 때는 반드시
-- 필터를 걸어야 한다.
delete from student where student_ID = 4;
-- delete from student; => 대참사

-- date 타입을 사용할 때 연습
-- (`) => 백틱
drop table `order`;

create table `order`(
	id int primary key,
    customer_order varchar(50),
    product_name varchar(20) not null,
    quality int not null,
    order_date date not null
);

insert into `order` values
(1, '문앞 배송', '신라면', 2, '2024-05-30');
insert into `order` values
(2, '느린 배송', '신라면', 3, '20240530');

-- date 타입 사용시 주의사항 1 
-- 2024 (5) 30 입력시 에러 발생 - 반드시 0 표기
insert into `order` values
(3, '아주 느린 배송', '신라면', 4, '2024530');

-- date 타입 사용시 주의사항 2
-- 1년은 12개월 이기 때문에 13이 들어갈 수 없다.
insert into `order` values
(4, '너무 느린 배송', '신라면', 5, '20241330');

select * from `order`;

use employees;
show tables;

select * from departments;
select * from employees limit 10;

select * from dept_emp;
select * from employees;
select * from departmets where dept_no = 'd005';
select * from salaries where emp_no = 10001;

select * from titles;

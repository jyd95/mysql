
create database myDB;

use myDB;

-- 테이블 생성
create table student(
	student_ID int ,
    -- varchar = 동적으로 메모리 변경, 
    -- varchar(50) = 50자 까지 제한 , 3자 들어오면 3자로 메모리 공간 할당 변경
    name varchar(50) not null,
    grade int(1) not null,
    major varchar(50) not null
);

select * from student;

desc student;

-- 과목 테이블 생성
create table subject(
	subject_id int,
    subject_name varchar(50) not null,
    credit int not null,
    department varchar(50) ,
    professer char(50) not null
);

select * from subject;

desc subject;

-- 이미 생성된 테이블에 기본키를 추가하는 방법

ALTER table student ADD PRIMARY KEY(student_id);
desc student;

-- 사전 기반 지식 (데이터가 들어가 있는 상태에서 빈 값이 포함 되어 있다면
-- 프라이머리 키를 추가할 수 없다.) Null 값이 존재하면 안됨.

alter table subject add primary key(subject_id);



-- 주문 
-- order
-- row --> Id : pk
-- 고객 주문 내용 - 문자
-- 상품 이름
-- 상품 가격
-- 수량

-- 예약어는 기본적으로 테이블 이름으로 선점할 수 없다. 하지만
-- `` 사용시 강제적으로 예약어도 테이블 이름으로 명시할 수 있다.
create table `order`(
	id int primary key,
    price bigint,
    customer_order varchar(50),
    product_name varchar(20) not null,
    quality int not null,
    order_date date not null
);

-- drop table `order`;

desc `order`;
-- 도전 과제 : 위 형식에 맞는 insert 를 진행하시오.

insert into `order`
(id, price, customer_order, product_name, quality, order_date)
values(2,15000,'or123','청바지',3,'2024-05-30');

select * from `order`;

-- drop table employee;

create table employee (
	id int primary key,
    name varchar(20) not null,
    age int,
    department varchar(50)
);

select * from employee;

desc employee;

create table customer(
	id int primary key,
    name varchar(50) not null,
    email varchar(50),
    address varchar(100) not null
);

select * from customer;

desc customer;



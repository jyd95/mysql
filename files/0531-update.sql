-- 0531 - update

-- UPDATE  [테이블 이름]
-- SET [칼럼 이름1] = [새로운 값1], [칼럼 이름2] = [새로운 값2], ...
-- WHERE [조건];

drop table `order`;

CREATE TABLE `order` (
  id INT PRIMARY KEY,
  order_name VARCHAR(20) NOT NULL,
  product_name VARCHAR(20) NOT NULL,
  quantity INT NOT NULL,
  order_date DATE NOT NULL
);


INSERT INTO `order` (id, order_name, product_name, quantity, order_date) 
VALUES
(1, '홍길동', '피자', 2, '2022-02-26'),
(2, '김영희', '치킨', 3, '2022-02-26'),
(3, '이철수', '햄버거', 1, '2022-02-27'),
(4, '박지민', '스테이크', 2, '2022-02-27'),
(5, '최영희', '짬뽕', 1, '2022-02-27'),
(6, '박서준', '초밥', 3, '2022-02-28'),
(7, '김민지', '파스타', 2, '2022-02-28'),
(8, '정재은', '토스트', 1, '2022-02-28'),
(9, '신은주', '감바스', 2, '2022-03-01'),
(10, '유지훈', '돈까스', 1, '2022-03-01');

select * from `order`;
-- update 절을 사용할 때는 천천히 where 확인하기
-- 1. id 가 1인 주문의 상품 수량을 5로 변경

update `order`
set quantity = 5
where id = 1;

-- 2. id가 3인 사람의 메뉴를 감바스로 수정해주세요.
update `order`
set product_name = '감바스'
where id = 3;

-- 3. id가 5인 주문의 주문 일자를 '2024-05-31'로 수정
update `order`
set order_date = '2024-05-31'
where id = 5;


-- 주문 수량이 2개 이상이고, 
-- 상품명이 '피자' 인 주문의 수령인 이름을 '김철수' 로 수정
update `order`
set order_name = '김철수'
where product_name = '피자' and quantity >= 2;

-- 주문 날짜가 '2022-02-28'이고, 상품명이
-- '초밥' 인 주문의 수량을 5개로 수정
update `order`
set quantity = '5'
where product_name = '초밥' 
	and order_date = '2022-02-28';


-- 주문 수량이 1개 이하이고, 상품명이 '감바스' 인
-- 주문의 수령인 주소를 '경기도 성남시' 로 수정
-- ( 경기도 성남시? 칼럼이 존재하지 않음!)

-- 테이블의 구조를 변경
alter table `order` add column address varchar(100);

update `order`
set address = '부산시 진구'
where product_name = '감바스' 
	and quantity = 1;





select * from `order`;


-- SQL

-- DDL(DDL(Data Definition Language, 데이터 정의어)
-- 데이터베이스 구조 정의에 사용하는 언어로, 테이블이나 컬럼 등을 생성, 수정, 삭제한다. 
-- 데이터베이스의 전체 골격을 구성하는 역할을 한다.)

-- DML(DML = (Data Manipulation Language, 데이터 조작어)
-- 데이터 조작에 사용하는 언어로, 테이블의 데이터를 조회, 저장, 수정, 삭제한다. 데이터베이스 내부에 
-- 실제로 저장된 데이터들을 다루는 역할을 한다)

-- DCL(정의)




-- 데이터 입력하기
/*
insert into usertbl(userName, birthYear, addr, mobile) 
values ('이승기',1987,'서울','010-111-1111');

insert into usertbl(userName, birthYear, addr, mobile) 
values ('김경호',1971,'전남','010-333-3333');
*/

drop table usertbl;
drop table buytbl;

insert into usertbl(userName, birthYear, addr, mobile) 
values ('이승기',1987,'서울','010-111-1111'),
		('김경호',1971,'전남','019-333-3333'),
		('윤종신',1969,'경남',''),
		('임재범',1963,'서울','016-666-6666'),
		('은지원',1978,'경북','011-888-8888'),
        ('조관우',1965,'경기','018-999-9999'),
        ('김범수',1979,'경남','011-222-2222'),
        ('조용필',1950,'경기','011-444-4444'),
        ('바비킴',1973,'서울','010-000-0000'),
        ('성시경',1979,'경남', NULL);

desc usertbl;

-- '이승기' 이름으로 조회 해보기.
select * from usertbl where userName = '이승기';


-- 데이터 삭제 하기(테이블은 유지)
-- delete from usertbl;

-- 다른 테이블이 삭제 하고자 하는 테이블을 참조하고 있다면
-- 바로 삭제 할 수 없다. (참조키를 삭제 하거나 참조 테이블을 먼저 삭제해야 한다)

insert into buytbl(userName, prodName, price, amount)
values  ('김범수', '운동화', 30, 2),
	      ('김범수', '노트북', 1000, 1),
        ('조용필', '모니터', 200, 1),
        ('바비킴', '모니터', 200, 5),
        ('김범수', '청바지', 50, 3),
        ('바비킴', '메모리', 80, 10),
        ('성시경', '책', 15, 5),
        ('은지원', '책', 15, 2),
        ('은지원', '청바지', 50, 1),
        ('바비킴', '운동화', 30, 2),
        ('은지원', '책', 15, 1),
        ('바비킴', '운동화', 30, 2);

select * from buytbl;

-- 홍길동은 현재 userTbl테이블에 존재하지 않는 값이다.
-- 그래서 byetbl row 값으로 들어 올 수 없다.( 제약 떄문에 )
-- insert into buytbl(userName, prodName, price, amount)
-- values  ('홍길동', '운동화', 30, 2);


-- 특정 데이터를 조회하고 싶다면 --> 필터를 건다.(where)

select * from usertbl where userName = '이승기';

select * from buytbl where userName = '김범수';

select * from usertbl where userName like '김__';


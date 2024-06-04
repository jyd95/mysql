-- 0604 : index 
-- drop table student2;
-- use mydb;

-- 테이블 설계시 인덱스 제약을 설정하는 방법 
create table student2(
	id int primary key,
    name varchar(50) not null,
    grade int not null,
    major varchar(50),
    index idx_major(major)
);

desc student2;

alter table student2 add index idx_grade(grade);



-- 0604 - tb-user

use mydb;

drop table tb_user;

create table TB_USER(
	user_id int auto_increment,
    user_name varchar(50) not null,
    password varchar(50) not null,
    primary key(user_id)
);


create table tb_user_details(
	details_id INT auto_increment,
	user_id INT unique, 
	address VARCHAR(100),
	phone_number VARCHAR(15),
    email VARCHAR(50),
    primary key(details_id),
    foreign key(user_id) references tb_user(user_id)
);

create table tb_team(
    team_name varchar(50) primary key,
    basecity varchar(30) not null,
    GM varchar (20),
    HeadCoach varchar(20),
    `owner` varchar(20),
    ranking int
);

create table tb_player(
	player_id int auto_increment primary key,
    player_name varchar(30) not null,
    age int,
    total_batting_average float(3),
    total_ERA float(3),
    now_team varchar(50),
    foreign key(now_team) references tb_team(team_name)
);

create database mydb2;
use mydb2;

create table tb_student(
	student_id int auto_increment primary key,
    student_name varchar(100) not null
);

-- drop table tb_class;
-- drop table tb_registration;
create table tb_class(
	class_id int auto_increment,
    class_name varchar(100) not null,
    teacher varchar(20) not null,
    primary key(class_id)
);

-- 학생과 수업 테이블은 N:M 관계가 생성이 된다 , 이'경우 관계설정이
-- 어려우므로 중간 테이블을 설계한다 (수강등록 테이블)

create table tb_registration(
	student_id int,
    class_id int,
    registration_date date,
    primary key(student_id, class_id),
    -- (복합 키)
    foreign key(student_id) references tb_student(student_id),
	foreign key(class_id) references tb_class(class_id)
);

desc tb_registration;

insert into tb_student (student_name)
values 
('폴 조지'),
('케빈 듀란트');

insert into tb_class (class_name, teacher)
values 
('버럭스쿨 박사과정',  '러셀 웨스트브룩'),
('버럭스쿨 자퇴생 긴급출장교육', '러셀 웨스트브룩');

insert into tb_registration (student_id, class_id, registration_date)
values
(1, 1, '2020-01-01'),
(2, 2, '2016-01-01');

select * from tb_student;
select * from tb_class;
select * from tb_registration;
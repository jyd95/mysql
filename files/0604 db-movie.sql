-- 0604-db_movie

create database db_movie;

use db_movie;

create table box_office(
	id int primary key auto_increment,
    title varchar(30) not null,
    director varchar(30),
    release_date char(10) not null,
    genre varchar(30) not null,
    rating float(2) not null
);

desc box_office;

INSERT INTO box_office (title, director, release_date, genre, rating)
VALUES 
('괴물', '봉준호', '2006-07-27', '드라마', 8.28),
('극한직업', '이병헌', '2019-01-23', '코미디', 9.20),
('명량', '김한민', '2014-07-30', '사극', 9.17),
('신과함께-죄와 벌', '김용화', '2017-12-20', '판타지', 7.56),
('밀양', '임권택', '2016-09-07', '드라마', 7.76),
('반도', '연상호', '2020-07-15', '액션', 6.71),
('베테랑', '류승완', '2015-08-05', '액션', 8.49),
('변호인', '양우석', '2013-12-18', '드라마', 8.41),
('군함도', '류승완', '2017-07-26', '사극', 8.01),
('암살', '최동훈', '2015-07-22', '액션', 8.37);

-- 문제 1 테이블에서 작품이 2번 이상 수록된 감독을 찾으시오.
select director,
	count(director)
    from box_office
    group by director
    having count(director) > 1 ;
-- 결과값 director = 류승완 , count = 2;

-- 문제 2 테이블에서 가장 최신 영화를 찾으시오

select * from (box_office)
WHERE (release_date) = 
(select MAX(release_date) FROM (box_office));
-- 결과 '6', '반도', '연상호', '2020-07-15', '액션', '6.71'

-- 문제 3 테이블에서 가장 평점이 높은 영화를 찾고 그 row 를 전체 출력하시오
select * from box_office where rating = (select max(rating) from box_office);


-- 문제 4 테이블을 개봉일 순으로 내림차순 정렬 하시오.
select * from box_office order by release_date desc;


-- 문제 5 장르가 드라마인 영화만 추출하시오.
select * from box_office where genre = '드라마';


-- 다른 사람의 쿼리 문제 풀어보기

--  movie 테이블에 문자형 칼럼 'check_watch'을 만들고, 
-- '괴물'과 '베테랑'을 '관람함'으로 수정하기

alter table box_office add column cheak_watch char(3);

desc box_office;

select * from box_office;

update box_office
set cheak_watch = '관람함'
where title = '괴물';

update box_office
set cheak_watch = '관람함'
where title = '베테랑';

-- 개봉일이 2015년도 ~ 2020년도인 영화만 조회하세요

select * from box_office 
	where release_date between '2015-01-01' and '2020-12-31';






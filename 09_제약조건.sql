-- 제약조건 pk fk 기본키 외래키 관계

-- 부서 테이블 만들기
drop table 직원;
drop table 부서;

CREATE table 부서(
    부서번호 number(4) primary key,
    부서이름 varchar2(20)
);    

desc 부서;

insert into 부서 values ( 3, '회계');
--기본키 열은 중복 또는 널값 입력이 안된다
select *
from 부서;

--외래키 설정
create table 직원(
    직원번호 number(4)primary key,
    이름 varchar2(20),
    월급 number(10),
    부서번호 number(4),
    foreign key(부서번호) references 부서(부서번호) 
    on delete set null
);

select *
from 직원;

insert into 부서 values ( 1, '개발');
insert into 부서 values ( 2, '경영');
insert into 부서 values ( 3, '회개');

insert into 직원(직원번호, 이름, 월급, 부서번호) values (100, '홍길동', 150, 1);
insert into 직원(직원번호, 이름, 월급, 부서번호) values (110, '펭수', 100, 1);
insert into 직원(직원번호, 이름, 월급, 부서번호) values (120, '라이언', 200, null);

--삭제시 문제 발생
delete from 부서 where 부서번호 = 1; --현재 참조하는 외래키 열이 있어서 삭제가 안됨

--제약 조건 추가하는법(1.테이블 생성 2. 제약조건 추가)
create table 과목(
    과목번호 varchar2(2),
    과목이름 varchar2(50)
);
insert into 과목 values ('01', '데이터베이스');
insert into 과목 values ('02', '프로그래밍');
select * from 과목;

create table 학생 (
    학번 varchar2(4),
    이름 varchar2(50),
    과목번호 varchar2(2)
);
insert into 학생 values ('0414', '홍길동', '01');
insert into 학생 values ('0415', '임꺽정', '02');
insert into 학생 values ('0416', '이순신', '03');
select * from 학생;

--1. 과목부터 제약조건 추가
alter table 과목
add primary key (과목번호);

desc 과목;

--제약조건 조회
select * from all_constraints
where table_name ='과목';

select * from all_constraints
where table_name ='학생';

--과목 테이블 과목이름열에 유니크 제약조건 추가
alter table 과목 add unique(과목이름);

alter table 학생 add primary key(학번);

alter table 학생 modify 이름 not null; 

--외래키 추가
alter table 학생 add foreign key (과목번호) references 과목 (과목번호);

-- 학생 update 
update 학생 set 과목번호 = '01' where 학번 = '0416';

-- 제약조건 삭제하기
alter table 과목 drop primary key;

alter table 과목 drop primary key cascade;

alter table 학생 drop constraint sys_c007016;
alter table 학생 drop constraint sys_c007018;

--테이블에 열을 추가 /수정/ 삭제
--서브쿼리로 테이블 카피
drop table 직원;
create table 직원 (직원번호, 이름, 급여, 부서번호)
as select employee_id, first_name, salary, department_id
from employees
where department_id = 90;

select * from 직원2;

--열을 추가
alter table 직원 add(성별 varchar2(3));
alter table 직원 add(커미션 number default 0);
--열을 수정
desc 직원;
alter table 직원 modify (성별 varchar2(10));
--열을 삭제
alter table 직원
drop column 성별;

--테이블의 이름 수정
rename 직원 to 직원2;



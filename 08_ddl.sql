--ddl 테이블 생성 수정 삭제

-- 테이블 생성
create table 테스(
    문자열 varchar2(100),
    숫자 number,
    날짜 date default sysdate
);

desc 테스;

select * from 테스;

--데이터 입력
insert into 테스 
values ('HTML', 5, '2021-10-8');
insert into 테스 
values ('css', 3, sysdate);
insert into 테스 (문자열, 숫자) 
values ('자바', 7);

rollback;

-- 기존 테이블 복사해서 만드는 방법
--열 구조만 복사
create table emp_temp
as
select * from employees where 1 <> 1;

select * from emp_temp;
desc emp_temp;

--80번 부서의 직원들만 따로 테이블 생성
create table emp80
as
select employee_id 직원번호, last_name 이름, salary 월급, salary*12 연봉, hire_date 고용일
from employees where department_id = 80;

desc emp80;
select * from emp80;

--예제
create table stmans
as
select employee_id id, job_id job, salary sal
from employees where job_id = 'ST_MAN';

select *from stmans;

--여기까지 sql 시험 범위 10월 21일날 평가
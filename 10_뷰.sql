--뷰는 가상의 테이블

--단순한 뷰 만들기
drop view emp_v1;
create view emp_v1 (직원번호, 이름, 성, 이메일, 고용일, 직종)
as 
select employee_id, first_name,last_name, email, hire_date, job_id
from employees;

select * from emp_v1;

--테이블 삭제
drop table 부서;

-- 뷰에 데이터를 입력(실제 테이블이 아니기 때문에 실제로는 테이블에 입력)
insert into emp_v1 (직원번호, 이름,성,이메일, 고용일, 직종)
values (333,'펭수','김', 'peng', sysdate, 'IT_PROG');

--복잡한 뷰 만들기
--그룹함수를 쓴 뷰는 dml(입력,수정,삭제) 불가

create or replace view 부서별_직원_보고서
as
select department_id 부서번호, count(employee_id) 직원수,
max(salary) 최고급여,
min(salary) 최저급여,
round(avg(salary)) 평균급여
from employees
group by department_id
order by department_id;

select * from 부서별_직원_보고서;
--읽기 전용 뷰
create or replace view emp_v_read
as
select employee_id, first_name, last_name, email, hire_date, job_id
from employees
where department_id=90
with read only;

select * from emp_v_read;

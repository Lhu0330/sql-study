--where절
--select *
--from employees
--where salary > 14000;

--select *
--from employees
--where last_name = 'King';

--select *
--from employees
--where hire_date < '02/06/10'; -- 2002.06.10 이전

--예제 1
--select *
--from employees
--where employee_id = 100;

-- 예제2
--select *
--from employees
--where first_name = 'David';

-- 예제3
--select * 
--from employees
--where employee_id < 105;

-- 예제4
--select *
--from job_history
--where start_date > '06/03/03';

-- 예제5
--select *
--from departments
--where location_id != 1700;

-- 논리 연산자 and or not
--select 
--    last_name,
--    department_id,
--    salary
--from employees
--where department_id = 60
--or department_id = 80
--and salary > 10000;

--select
--    last_name,
--    department_id,
--    salary
--from employees 
--where (department_id = 60
--or department_id = 80)
--and salary > 10000;

--select
--    last_name,
--    department_id,
--    salary
--from employees 
--where department_id = 60
--or department_id = 80
--and salary > 10000;

--select hire_date, salary, job_id
--from employees
--where hire_date > '08/04/04' or salary > 13000 and job_id = 'AD_VP';

----예제 1
--select *
--from employees
--where salary > 4000 and job_id = 'IT_PROG';

--예제 2
--select *
--from employees
--where salary > 4000 and (job_id = 'IT_PROG' or job_id = 'FI_ACCOUNT');

--연산자 in
--select *
--from employees
--where salary = 4000 or salary = 3000 or salary = 2700;

--select *
--from employees
--where salary in (4000,3000,2700);

--예제1
--select *
--from employees
--where salary in (10000, 17000, 24000);

--예제2
--select *
--from employees
--where department_id not in (30, 50, 80, 100, 110)

--between 연산자
--select *
--from employees
--where salary between 9000 and 10000;

--예제1
--select*
--from employees
--where salary BETWEEN 10000 and 20000;

--예제2
--select *
--from employees
--where hire_date between '04/01/01' and '04/12/30';

select *
from employees
where salary not between 7000 and 17000;

-- like 연산자 _%를 같이 사용해서 문자열을 검색
--select *
--from employees
--where last_name like 'B%'; -- 대문자 b로 시작 뒤에는 뭐가와도 상관없음

--select *
--from employees
--where last_name like '%B%'; --중간에 b가 들어가는 모든 문자열

--select *
--from employees
--where last_name like '____y';

-- 예제1
--select *
--from employees
--where job_id like '%AD%';

-- 예제2
--select *
--from employees
--where job_id like 'AD___';

-- 예제3
--select *
--from employees
--where phone_number like '%1234';

--예제4
--select *
--from employees
--where phone_number not like '%3%' and phone_number like '%9';

--예제5
--select *
--from employees
--where job_id like '%MGR%' or job_id like '%ASST%';

-- is null 연산자
--select commission_pct
--from employees
--where commission_pct is not null;

-- null은 0이나 공백이 아닌 입력되지 않은 값이다

-- 예제1






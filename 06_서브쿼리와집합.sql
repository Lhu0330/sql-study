--서브 쿼리
-- Popp 직원보다 고요일이 최근에 고용한 사람
select *
from employees
where hire_date > ( 
    select hire_date 
    from employees 
    where last_name = 'Popp'
    );

--그룹함수의 결과를 서브쿼리로 사용
select last_name 이름, job_id 직종, salary 급여
from employees
where salary = ( select min(salary) from employees );

--예제 
select last_name, salary
from employees
where salary > ( select salary from employees where last_name = 'Abel');

--예제
select employee_id 직원번호, last_name 이름,department_id 부서번호, salary 급여
from employees
where 
    salary > (select salary from employees where last_name = 'Bull') and
    department_id = (select department_id from employees where last_name = 'Bull');

--예제
select last_name, salary, manager_id
from employees
where manager_id = (select employee_id from employees where last_name='Russell');

--예제
select *
from employees e
where e.job_id = (select j.job_id from jobs j where j.job_title = 'Stock Manager');

--다중행 서브쿼리 (부등호 비교를 할수 없다)
--in은 값이 하나라도 같으면 검색됨
select department_id, employee_id, last_name
from employees
where salary in (select min(salary) from employees group by department_id)
order by department_id;

-- any도 값이 하나라도 맞으며 검색이됨
select department_id, last_name, salary
from employees
where salary = any(select salary from employees where job_id = 'IT_PROG')
    and job_id != 'IT_PROG'
    order by salary desc;

--all은 값이 전부 다 만족해야된다
select department_id, last_name, salary
from employees
where salary < all(select salary from employees where job_id = 'IT_PROG')
    and job_id != 'IT_PROG'
    order by salary desc;

--예제
select employee_id, first_name, job_id, salary, manager_id
from employees
where manager_id in (select manager_id from employees where department_id = 20)
    and department_id <> 20;
    
--예제
select employee_id, last_name, job_id, salary
from employees
where salary < any (select salary from employees where job_id = 'ST_MAN');

select employee_id, last_name, job_id, salary
from employees
where salary < all (select salary from employees where job_id = 'IT_PROG');

--다중열 서브쿼리(열이 여러개 일때)
select employee_id, first_name, job_id, salary, manager_id
from employees
where (manager_id, job_id) in (select manager_id, job_id from employees where first_name= 'Bruce')
and first_name <> 'Bruce';

select department_id 부서번호, employee_id 사원번호, first_name, salary
from employees
where (department_id, salary) in (select department_id, min(salary) from employees group by department_id)
order by department_id;

select first_name, job_id, salary, department_id
from employees
where (job_id, salary) in (select job_id, min(salary) from employees group by job_id)
order by salary desc;

--집합
--union 합집합: 중복을 제거한다.
select employee_id, job_id
from employees
union
select employee_id, job_id
from job_history;

--union all 합집합 : 두개의 셀렉트문의 결과를 합친다.
select employee_id, job_id
from employees
union all
select employee_id, job_id
from job_history;

--intersect 교집합
select employee_id, job_id
from employees
intersect
select employee_id, job_id
from job_history;

--minus 차집합
select employee_id, job_id
from employees
minus
select employee_id, job_id
from job_history;

--예제
select department_id
from employees
union 
select department_id
from departments;

--예제
select department_id
from employees
union all
select department_id
from departments;

--예제
select department_id
from employees
intersect 
select department_id
from departments;


--예제
select department_id
from departments
minus 
select department_id
from employees;
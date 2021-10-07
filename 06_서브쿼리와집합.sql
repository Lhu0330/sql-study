--���� ����
-- Popp �������� ������� �ֱٿ� ����� ���
select *
from employees
where hire_date > ( 
    select hire_date 
    from employees 
    where last_name = 'Popp'
    );

--�׷��Լ��� ����� ���������� ���
select last_name �̸�, job_id ����, salary �޿�
from employees
where salary = ( select min(salary) from employees );

--���� 
select last_name, salary
from employees
where salary > ( select salary from employees where last_name = 'Abel');

--����
select employee_id ������ȣ, last_name �̸�,department_id �μ���ȣ, salary �޿�
from employees
where 
    salary > (select salary from employees where last_name = 'Bull') and
    department_id = (select department_id from employees where last_name = 'Bull');

--����
select last_name, salary, manager_id
from employees
where manager_id = (select employee_id from employees where last_name='Russell');

--����
select *
from employees e
where e.job_id = (select j.job_id from jobs j where j.job_title = 'Stock Manager');

--������ �������� (�ε�ȣ �񱳸� �Ҽ� ����)
--in�� ���� �ϳ��� ������ �˻���
select department_id, employee_id, last_name
from employees
where salary in (select min(salary) from employees group by department_id)
order by department_id;

-- any�� ���� �ϳ��� ������ �˻��̵�
select department_id, last_name, salary
from employees
where salary = any(select salary from employees where job_id = 'IT_PROG')
    and job_id != 'IT_PROG'
    order by salary desc;

--all�� ���� ���� �� �����ؾߵȴ�
select department_id, last_name, salary
from employees
where salary < all(select salary from employees where job_id = 'IT_PROG')
    and job_id != 'IT_PROG'
    order by salary desc;

--����
select employee_id, first_name, job_id, salary, manager_id
from employees
where manager_id in (select manager_id from employees where department_id = 20)
    and department_id <> 20;
    
--����
select employee_id, last_name, job_id, salary
from employees
where salary < any (select salary from employees where job_id = 'ST_MAN');

select employee_id, last_name, job_id, salary
from employees
where salary < all (select salary from employees where job_id = 'IT_PROG');

--���߿� ��������(���� ������ �϶�)
select employee_id, first_name, job_id, salary, manager_id
from employees
where (manager_id, job_id) in (select manager_id, job_id from employees where first_name= 'Bruce')
and first_name <> 'Bruce';

select department_id �μ���ȣ, employee_id �����ȣ, first_name, salary
from employees
where (department_id, salary) in (select department_id, min(salary) from employees group by department_id)
order by department_id;

select first_name, job_id, salary, department_id
from employees
where (job_id, salary) in (select job_id, min(salary) from employees group by job_id)
order by salary desc;
    
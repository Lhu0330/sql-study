-- ����
-- on�� ����� �⺻ ����
--select e.employee_id, e.last_name, e.department_id, d.department_name
--from employees e join departments d
--    on e.employee_id = d.department_id;

-- where ���� ����� ���� ���� ���
--select e.employee_id, e.last_name, e.department_id, d.department_name
--from employees e, departments d
--where e.employee_id = d.department_id;

--����
--select d.department_id, l.city, c.country_name
--from departments d
--join locations l
--    on d.location_id = l.location_id
--join  countries c
--    on l.country_id = c.country_id
--where (l.city = 'Seattle' or l.city = 'London') and c.country_name like 'United%';

-- ��ü ����
--select e.last_name ����, m.last_name �Ŵ���
--from employees e
--join employees m
--    on m.manager_id = e.employee_id;

--�ܺ� ����
--null���� �����ϰ� ����
select e.last_name �̸�, d.department_id �μ���ȣ, d.department_name �μ���
from employees e
join departments d
     on e.department_id = d.department_id;

select *
from employees
where department_id is null; --�μ���ȣ�� null�� ����

--left �ܺ� ����
select e.last_name �̸�, d.department_id �μ���ȣ, d.department_name �μ���
from employees e left outer
join departments d
     on e.department_id = d.department_id;
     
--right �ܺ� ����
select e.last_name �̸�, d.department_id �μ���ȣ, d.department_name �μ���
from employees e right outer
join departments d
     on e.department_id = d.department_id;
     
--full �ܺ� ����
select e.last_name �̸�, d.department_id �μ���ȣ, d.department_name �μ���
from employees e full outer
join departments d
     on e.department_id = d.department_id;
     
--����
select c.country_name ����, c.country_id ������ȣ, l.location_id ������ȣ, l.city ����
from countries c left outer
join locations l
     on c.country_id = l.country_id
order by ������ȣ desc;

--ũ�ν� ����
--����
select c.country_name ����, r.region_name �����̸�
from countries c
cross join regions r;
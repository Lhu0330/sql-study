-- �׷��Լ�(������ �Լ�, �����Լ�)
--select round(avg(salary))��հ�, max(salary) �ִ밪, min(salary) �ּҰ�, sum(salary) �հ�, count(salary) ī��Ʈ
--from employees
--where job_id like '%REP%';

--select count(*) 
--from employees

--select count (*)
--from employees where department_id = 80;

-- null���� �����ϰ� ����ϴ�.(���� count(*))
--select count(department_id)
--from employees; --1���� �μ��� ����(null�� �ϳ�����)

--select count(distinct department_id)
--from employees; --�ߺ����� �ʴ� �μ��� ����

--select avg(commission_pct)
--from employees;

-- group by ��: Ư���׷����� ����� �׷��Լ� ���
--select department_id �μ���ȣ, round(avg(salary)) ��ձ޿�
--from employees
--group by department_id
--order by �μ���ȣ;

--����1
--select
--    department_id,
--    count(department_id) �����,
--    max(salary) �ְ�޿�,
--    min(salary) �ּұ޿�,
--    sum(salary) �޿��հ�,
--    round(avg(salary)) ��ձ޿�
--from employees
--group by department_id
--order by �޿��հ� desc;

--���� 2
--select 
--    department_id �μ���ȣ,
--    job_id ����,
--    manager_id ����ȣ,
--    sum(salary) �����հ�,
--    count(manager_id) ������    
--from employees
--group by department_id, job_id, manager_id
--order  by department_id;

--���� 3
--select
--    round(avg(max(salary))) �μ����ְ�������,
--    round(avg(min(salary))) �μ��������������
--from employees
--group by department_id;

-- �׷��Լ��� ������ having
--select department_id �μ���, count(*) �����
--from employees
--group by department_id
--having count(*) > 5;

--���� 1
--select
--    job_id ����,
--    sum(salary) �����հ�
--from employees
--group by job_id
--having 
--    avg(salary) > 10000 and
--    job_id != 'AC_MGR'
--order by �����հ� desc;

--���� 2
--select 
--    department_id �μ���ȣ,
--    round(avg(salary)) ��ձ޿�
--from employees
--group by department_id
--having 
--    avg(salary) <= 7000 and
--    department_id != 40;

--���� 3
select 
    job_id,
    sum(salary) �޿��Ѿ�
from employees
where job_id not like '%REP%'
group by job_id
having
    sum(salary) >= 13000
order by �޿��Ѿ� desc;
--ddl ���̺� ���� ���� ����

-- ���̺� ����
create table �׽�(
    ���ڿ� varchar2(100),
    ���� number,
    ��¥ date default sysdate
);

desc �׽�;

select * from �׽�;

--������ �Է�
insert into �׽� 
values ('HTML', 5, '2021-10-8');
insert into �׽� 
values ('css', 3, sysdate);
insert into �׽� (���ڿ�, ����) 
values ('�ڹ�', 7);

rollback;

-- ���� ���̺� �����ؼ� ����� ���
--�� ������ ����
create table emp_temp
as
select * from employees where 1 <> 1;

select * from emp_temp;
desc emp_temp;

--80�� �μ��� �����鸸 ���� ���̺� ����
create table emp80
as
select employee_id ������ȣ, last_name �̸�, salary ����, salary*12 ����, hire_date �����
from employees where department_id = 80;

desc emp80;
select * from emp80;

--����
create table stmans
as
select employee_id id, job_id job, salary sal
from employees where job_id = 'ST_MAN';

select *from stmans;

--������� sql ���� ���� 10�� 21�ϳ� ��
--dml �۾�

--������ �Է� insert
insert into departments(department_id, department_name, manager_id, location_id)
values (300, 'Game', 100, 1700);

select *
from departments
order by department_id desc;

--Ư�� ���� �Է�
insert into departments(department_id, department_name)
values (280, 'music');

-- �� �̸��� �����ϸ� �� ����ߵ�
insert into departments
values (290, 'busan', '', '');

--����
insert into departments(department_id, department_name, manager_id, location_id)
values (271, 'sample dept 1', 200, 1700);
insert into departments(department_id, department_name, manager_id, location_id)
values (272, 'sample dept 2', 200, 1700);
insert into departments(department_id, department_name, manager_id, location_id)
values (273, 'sample dept 3', 200, 1700);

--������ ���� update
update departments
set manager_id = 200
where department_name = 'Game';

--����
update departments
set manager_id = 100
where department_id between 150 and 200;

--�ΰ� �̻� ���� ������Ʈ
update departments
set manager_id = 100, location_id =1800
where department_name= 'Game';

--�������� ���� delete
delete from departments
where department_name = 'Game';

rollback;

commit;

rollback;

--�ڵ� Ŀ�� ����
show autocommit;
--on ����ÿ� �ڵ��� commit
set autocommit on;
--off ����ÿ� ����
set autocommit off;


--dml 작업

--데이터 입력 insert
insert into departments(department_id, department_name, manager_id, location_id)
values (300, 'Game', 100, 1700);

select *
from departments
order by department_id desc;

--특정 열만 입력
insert into departments(department_id, department_name)
values (280, 'music');

-- 열 이름을 생략하면 다 적어야됨
insert into departments
values (290, 'busan', '', '');

--예제
insert into departments(department_id, department_name, manager_id, location_id)
values (271, 'sample dept 1', 200, 1700);
insert into departments(department_id, department_name, manager_id, location_id)
values (272, 'sample dept 2', 200, 1700);
insert into departments(department_id, department_name, manager_id, location_id)
values (273, 'sample dept 3', 200, 1700);

--데이터 수정 update
update departments
set manager_id = 200
where department_name = 'Game';

--예제
update departments
set manager_id = 100
where department_id between 150 and 200;

--두개 이상 열을 업데이트
update departments
set manager_id = 100, location_id =1800
where department_name= 'Game';

--데이터의 삭제 delete
delete from departments
where department_name = 'Game';

rollback;

commit;

rollback;

--자동 커밋 설정
show autocommit;
--on 실행시에 자동의 commit
set autocommit on;
--off 실행시에 수동
set autocommit off;


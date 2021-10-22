-- 조인
-- on을 사용한 기본 조인
--select e.employee_id, e.last_name, e.department_id, d.department_name
--from employees e join departments d
--    on e.employee_id = d.department_id;

-- where 절을 사용한 예전 조인 방법
--select e.employee_id, e.last_name, e.department_id, d.department_name
--from employees e, departments d
--where e.employee_id = d.department_id;

--예제
--select d.department_id, l.city, c.country_name
--from departments d
--join locations l
--    on d.location_id = l.location_id
--join  countries c
--    on l.country_id = c.country_id
--where (l.city = 'Seattle' or l.city = 'London') and c.country_name like 'United%';

-- 자체 조인
--select e.last_name 직원, m.last_name 매니저
--from employees e
--join employees m
--    on m.manager_id = e.employee_id;

--외부 조인
--null값은 제외하고 나옴
select e.last_name 이름, d.department_id 부서번호, d.department_name 부서명
from employees e
join departments d
     on e.department_id = d.department_id;

select *
from employees
where department_id is null; --부서번호가 null인 직원

--left 외부 조인
select e.last_name 이름, d.department_id 부서번호, d.department_name 부서명
from employees e left outer
join departments d
     on e.department_id = d.department_id;
     
--right 외부 조인
select e.last_name 이름, d.department_id 부서번호, d.department_name 부서명
from employees e right outer
join departments d
     on e.department_id = d.department_id;
     
--full 외부 조인
select e.last_name 이름, d.department_id 부서번호, d.department_name 부서명
from employees e full outer
join departments d
     on e.department_id = d.department_id;
     
--예제
select c.country_name 국가, c.country_id 국가번호, l.location_id 지역번호, l.city 도시
from countries c left outer
join locations l
     on c.country_id = l.country_id
order by 지역번호 desc;

--크로스 조인
--예제
select c.country_name 국가, r.region_name 지역이름
from countries c
cross join regions r;
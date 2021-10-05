-- 그룹함수(다중행 함수, 집계함수)
--select round(avg(salary))평균값, max(salary) 최대값, min(salary) 최소값, sum(salary) 합계, count(salary) 카운트
--from employees
--where job_id like '%REP%';

--select count(*) 
--from employees

--select count (*)
--from employees where department_id = 80;

-- null값을 제외하고 계산하다.(예외 count(*))
--select count(department_id)
--from employees; --1명이 부서가 없음(null값 하나있음)

--select count(distinct department_id)
--from employees; --중복되지 않는 부서의 개수

--select avg(commission_pct)
--from employees;

-- group by 절: 특정그룹으로 나누어서 그룹함수 사용
--select department_id 부서번호, round(avg(salary)) 평균급여
--from employees
--group by department_id
--order by 부서번호;

--예제1
--select
--    department_id,
--    count(department_id) 사원수,
--    max(salary) 최고급여,
--    min(salary) 최소급여,
--    sum(salary) 급여합계,
--    round(avg(salary)) 평균급여
--from employees
--group by department_id
--order by 급여합계 desc;

--예제 2
--select 
--    department_id 부서번호,
--    job_id 직업,
--    manager_id 상사번호,
--    sum(salary) 월급합계,
--    count(manager_id) 직원수    
--from employees
--group by department_id, job_id, manager_id
--order  by department_id;

--예제 3
--select
--    round(avg(max(salary))) 부서별최고월급평균,
--    round(avg(min(salary))) 부서별최저월급평균
--from employees
--group by department_id;

-- 그룹함수의 조건절 having
--select department_id 부서명, count(*) 사원수
--from employees
--group by department_id
--having count(*) > 5;

--예제 1
--select
--    job_id 직종,
--    sum(salary) 월급합계
--from employees
--group by job_id
--having 
--    avg(salary) > 10000 and
--    job_id != 'AC_MGR'
--order by 월급합계 desc;

--예제 2
--select 
--    department_id 부서번호,
--    round(avg(salary)) 평균급여
--from employees
--group by department_id
--having 
--    avg(salary) <= 7000 and
--    department_id != 40;

--예제 3
select 
    job_id,
    sum(salary) 급여총액
from employees
where job_id != '%REP%'
group by job_id
having 
    sum(salary) >= 13000
order by 급여총액 desc;
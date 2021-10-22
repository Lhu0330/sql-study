-- 단일행 함수

-- 문자 함수
-- 대소문자 변환 lower(소문자) upper(대문자) initcap(첫문자 대문자 나머지 소문자)
--select upper('SQL Course') from dual; --듀얼은 테스트용 테이블

-- 문자 조작 함수
--select substr('abcdefg', 3, 4), length('abcdefg'), instr('abcdefg', 'd') from dual;

-- 문자 함수 예제
--select *
--from employees
--where lower(last_name) = 'higgins';

--select department_id, last_name, email
--from employees
--where initcap(email) = 'Sking';

--select last_name, concat('직업명이 ', job_id) as 작업명  
--from employees
--where SUBSTR(job_id, 4, 3) = 'REP';

--문자열 가장 끝 문자 -1
--select last_name, substr(last_name, -1, 1)
--from employees

--select first_name, last_name,
--    upper(concat(first_name, substr(last_name, 1,3)))이름합성
--from employees
--where department_id = 60;

-- 문자 치환 함수
--select job_id, 
--replace(job_id, 'ACCOUNT', 'ACCNT') 적용결과
--FROM employees;

--예제 1
--select 
--    last_name, 
--    upper(last_name) upper적용, 
--    lower(last_name) lower적용, 
--    email, 
--    initcap(email) initcap적용
--from employees

--예제 2
--select job_id, substr(job_id, 1, 2)
--from employees

--숫자형 함수
--반올림 함수 round(숫자, 자릿수)
--select 
--    round(15.193, 1) 소수첫째,
--    round(15.193, 0) 정수,
--    round(15.193, -1) "10의자리"
--from dual;

--직원 번호가 짝수번인 직원들만 출력하라
--select employee_id 짝수번째, last_name
--from employees
--where mod(employee_id, 2) = 0
--order by 1;

--예제
--select 
--    salary,
--    round(salary/30, 0) 정수,
--    round(salary/30, 1) "소수1",
--    round(salary/30, -1) "10의자리"
--from employees

--예제 1
select 
    employee_id,
    first_name,
    last_name,
    salary,
    case
        when salary >= 9000 then '상위급여'
        when salary >= 6000 then '중위급여'
        else '하위급여'
    end 급여수준
from employees
where job_id = 'IT_PROG';

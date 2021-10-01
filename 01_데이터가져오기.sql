--주석 단축키
--여러줄
--주석
--테이블의 모든 행과 열 읽어오기
--SELECT * -- 별은 전체 열
--FROM departments; 
--
---- 2. 특정 열만 조회하기
--select department_Id, department_name
--from departments;

--SELECT employee_id,first_name,last_name 
--FROM employees;

-- 별칭 붙이기 
--SELECT department_id AS 부서번호, department_name as 부서이름
--FROM departments;

---- 산술 연산자 (+,-,*,/)
--SELECT 
--    last_name, 
--    first_name 이름, 
--    job_id 직책, 
--    salary,
--    (salary-1000)*0.05 AS 보너스
--FROM employees;

-- distinct: 중복된 값 제거
--select distinct job_id
--from employees;

-- 예제 1
--select employee_id, first_name, last_name
--from employees;

--예제 2
--select 
--    first_name,
--    salary,
--    salary*1.1 as 뉴셀러리
--from employees;

----예제 3
--select
--    employee_id as 사원번호,
--    first_name as 이름,
--    last_name as 성
--from employees;

-- 연결연산자 ||
--select last_name || ' is a ' || job_id as "직업 정보"
--from employees;

-- 예제 4
--select
--    employee_id,
--    first_name || ' ' || last_name as "이름",
--    email || '@company.com' as "이메일"
--from employees;

-- desc 열 정보 varchar2 문자갯수(ex assd: varchar2(4)) number(숫자) varchar2(문자) date(날짜) number(8,2):숫자 8자리와 소숫점 2자리까지 표현 가능
--desc employees;
--desc departments;



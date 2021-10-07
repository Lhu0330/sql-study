--연습 문제 1
select empno, ename, sal
from emp
where deptno = 10;

--연습 문제 2
select ename, hiredate, deptno
from emp
where empno=7369;

--연습 문제 3
select *
from emp
where ename= 'ALLEN';

--연습 문제 4
select ename, deptno, sal
from emp
where hiredate = '81/02/20';

--연습 문제 5
select *
from emp
where job not like 'MANAGER';

--연습 문제 6
select *
from emp
where hiredate >= '81/04/02';

--연습 문제 7
select ename, sal, deptno
from emp
where sal >= 800;

--연습 문제 8
select *
from emp
where deptno >= 20;

--연습 문제 9
select *
from emp
where ename > 'L%';

--연습 문제 10
select *
from emp
where hiredate < '81/12/09';

--연습 문제 11
select empno, ename
from emp
where empno <= 7698;.

--연습 문제 12
select ename, sal, deptno
from emp
where hiredate >= '81/04/02' and hiredate <= '81/12/09';

--연습 문제 13
select ename, job, sal
from emp
where sal > 1600 and sal<3000;

--연습 문제 14
select *
from emp
where empno not between 7654 and 7782;

--연습 문제 15
select *
from emp
where ename between 'B%' and 'J%';

--연습 문제 16
select *
from emp
where to_char(hiredate, 'YY') <> '81';

--연습 문제 17
select *
from emp
where job = 'MANAGER' or job = 'SALESMAN';

--연습 문제 18
select ename, empno, deptno
from emp
where deptno <> 20 and deptno <> 30;

--연습 문제 19
select empno, ename, hiredate, deptno
from emp
where ename like 'S%';

--연습 문제 20
select *
from emp
where to_char(hiredate, 'YY') = '81';

--연습 문제 21
select *
from emp
where ename like '%S%';

--연습 문제 22
select *
from emp
where ename like 'M%' and ename like '%N';

--연습 문제 23
select *
from emp
where ename like '_A%';

--연습 문제 24
select *
from emp
where comm is null;

--연습 문제 25
select *
from emp
where comm is not null;

--연습 문제 26
select ename, deptno, sal
from emp
where deptno = 30 and sal > 1500;

--연습 문제 27
select empno, ename, deptno
from emp
where ename like 'K%' or deptno = 30;

--연습 문제 28
select *
from emp
where sal > 1500 and deptno = 30 and job = 'MANAGER';

--연습 문제 29
select *
from emp
where deptno = 30
order by empno;

--연습 문제 30
select *
from emp
order by sal desc;

--연습 문제 31
select *
from emp
order by deptno , sal desc;

--연습 문제 32
select deptno, ename, sal
from emp
order by deptno desc, ename, sal desc;

--연습 문제 33
select 
    ename, 
    sal, 
    round(sal*0.13) bouns, 
    deptno
from emp
where deptno = 10;

--연습 문제 34
select 
    ename,
    sal,
    nvl(comm,0),
    sal+nvl(comm,0) total
from emp
order by total desc;

--연습 문제 35
select 
    ename, 
    sal,
    to_char(sal*0.15, '$999,999,999.9') 회비
from emp
where sal between 1500 and 3000;

--연습 문제 36
select 
    d.dname,
    count(e.empno)
from emp e 
join dept d
    on e.deptno = d.deptno 
group by d.dname 
having count(e.empno)>5;

--연습 문제 37
select job, sum(sal) 급여합계
from emp
group by job
having 
    sum(sal) > 5000 and
    job <> 'SALESMAN';
    
--연습 문제 38
select e.empno, e.ename, sal, grade
from emp e
join salgrade s
on sal between losal and hisal;

--연습 문제 39
select
    deptno,
    count(empno) 사원수,
    count(comm) "커미션 받은 사원수"
from emp
group by deptno;

--연습 문제 40
select 
    ename,
    deptno,
    case deptno 
        when 10 then '총무부'
        when 20 then '개발부'
        else '영업부'
    end "부서명"
from emp;
        
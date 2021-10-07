--���� ���� 1
select empno, ename, sal
from emp
where deptno = 10;

--���� ���� 2
select ename, hiredate, deptno
from emp
where empno=7369;

--���� ���� 3
select *
from emp
where ename= 'ALLEN';

--���� ���� 4
select ename, deptno, sal
from emp
where hiredate = '81/02/20';

--���� ���� 5
select *
from emp
where job not like 'MANAGER';

--���� ���� 6
select *
from emp
where hiredate >= '81/04/02';

--���� ���� 7
select ename, sal, deptno
from emp
where sal >= 800;

--���� ���� 8
select *
from emp
where deptno >= 20;

--���� ���� 9
select *
from emp
where ename > 'L%';

--���� ���� 10
select *
from emp
where hiredate < '81/12/09';

--���� ���� 11
select empno, ename
from emp
where empno <= 7698;.

--���� ���� 12
select ename, sal, deptno
from emp
where hiredate >= '81/04/02' and hiredate <= '81/12/09';

--���� ���� 13
select ename, job, sal
from emp
where sal > 1600 and sal<3000;

--���� ���� 14
select *
from emp
where empno not between 7654 and 7782;

--���� ���� 15
select *
from emp
where ename between 'B%' and 'J%';

--���� ���� 16
select *
from emp
where to_char(hiredate, 'YY') <> '81';

--���� ���� 17
select *
from emp
where job = 'MANAGER' or job = 'SALESMAN';

--���� ���� 18
select ename, empno, deptno
from emp
where deptno <> 20 and deptno <> 30;

--���� ���� 19
select empno, ename, hiredate, deptno
from emp
where ename like 'S%';

--���� ���� 20
select *
from emp
where to_char(hiredate, 'YY') = '81';

--���� ���� 21
select *
from emp
where ename like '%S%';

--���� ���� 22
select *
from emp
where ename like 'M%' and ename like '%N';

--���� ���� 23
select *
from emp
where ename like '_A%';

--���� ���� 24
select *
from emp
where comm is null;

--���� ���� 25
select *
from emp
where comm is not null;

--���� ���� 26
select ename, deptno, sal
from emp
where deptno = 30 and sal > 1500;

--���� ���� 27
select empno, ename, deptno
from emp
where ename like 'K%' or deptno = 30;

--���� ���� 28
select *
from emp
where sal > 1500 and deptno = 30 and job = 'MANAGER';

--���� ���� 29
select *
from emp
where deptno = 30
order by empno;

--���� ���� 30
select *
from emp
order by sal desc;

--���� ���� 31
select *
from emp
order by deptno , sal desc;

--���� ���� 32
select deptno, ename, sal
from emp
order by deptno desc, ename, sal desc;

--���� ���� 33
select 
    ename, 
    sal, 
    round(sal*0.13) bouns, 
    deptno
from emp
where deptno = 10;

--���� ���� 34
select 
    ename,
    sal,
    nvl(comm,0),
    sal+nvl(comm,0) total
from emp
order by total desc;

--���� ���� 35
select 
    ename, 
    sal,
    to_char(sal*0.15, '$999,999,999.9') ȸ��
from emp
where sal between 1500 and 3000;

--���� ���� 36
select 
    d.dname,
    count(e.empno)
from emp e 
join dept d
    on e.deptno = d.deptno 
group by d.dname 
having count(e.empno)>5;

--���� ���� 37
select job, sum(sal) �޿��հ�
from emp
group by job
having 
    sum(sal) > 5000 and
    job <> 'SALESMAN';
    
--���� ���� 38
select e.empno, e.ename, sal, grade
from emp e
join salgrade s
on sal between losal and hisal;

--���� ���� 39
select
    deptno,
    count(empno) �����,
    count(comm) "Ŀ�̼� ���� �����"
from emp
group by deptno;

--���� ���� 40
select 
    ename,
    deptno,
    case deptno 
        when 10 then '�ѹ���'
        when 20 then '���ߺ�'
        else '������'
    end "�μ���"
from emp;
        
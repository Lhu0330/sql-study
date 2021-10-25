--인덱스

--인덱스 조회하기
select *
from ALL_IND_COLUMNS
where table_name = 'MEMBERS';

-- 새 테이블 만들기
drop table members;
create table members (
    member_id number primary key,
    first_name varchar2(100) not null,
    last_name varchar2(100)not null,
    gender varchar2(1) not null,
    dob date not null,
   email varchar2(255) not null
);

select *
from members
order by member_id;

--일반열을 검색하기
select *
from members where last_name = 'Harse';

--아래의 커리문의 실행보고서를 작성한다
explain plan for
select * 
from members;
-- 저장된 실행보고서를 읽기
select
    plan_table_output
from 
    table(DBMS_XPLAN.DISPLAY());
    
--인덱스 만들기
create index members_last_name_i on members(last_name);

explain plan for
select *
from members
where last_name like 'A%' and first_name like 'M%';

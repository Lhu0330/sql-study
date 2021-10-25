select sysdate from dual;

ALTER USER HR ACCOUNT UNLOCK IDENTIFIED BY 1234;

-- scott 계정을 설치 및 비번정하기
@C:\oraclexe\app\oracle\product\11.2.0\server\rdbms\admin\scott.sql;
alter user scott identified by 1234;

conn sys as sysdba

select * from sys.dba_users;

grant create view scott;

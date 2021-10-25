select sysdate from dual;

ALTER USER HR ACCOUNT UNLOCK IDENTIFIED BY 1234;

<<<<<<< HEAD
ALTER USER SCOTT ACCOUNT UNLOCK IDENTIFIED BY 1234;
=======
-- scott 계정을 설치 및 비번정하기
@C:\oraclexe\app\oracle\product\11.2.0\server\rdbms\admin\scott.sql;
alter user scott identified by 1234;
<<<<<<< HEAD

conn sys as sysdba

select * from sys.dba_users;

grant create view scott;
=======
>>>>>>> f5bf472c5af44e771ff58f542a69b06b8de6dab1
>>>>>>> f49232470f72c20356721f43266e788915955c6c

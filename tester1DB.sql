show user;

DROP TABLE STUDENT;
DROP TABLE COURSE;
CREATE TABLE COURSE (
  COU_ID       NUMBER(4)      NOT NULL,   -- ���� ��ȣ
  COU_NAME     VARCHAR(20)    NULL,  -- ������
  TEA_NAME     VARCHAR(20)    NULL,  -- �����
  PRIMARY KEY(COU_ID)   -- ���� ��ȣ�� �⺻Ű�� ����
);
CREATE TABLE STUDENT (
  STU_ID       NUMBER(4)        NOT NULL, -- �л���ȣ, �� �� ��� �� ��
  STU_NAME     VARCHAR(20)      NULL, -- �л���
  AGE          NUMBER(4)        NULL, -- ����
  STU_EMAIL    VARCHAR(20)      NULL, -- �̸���
  COU_ID       NUMBER(4)        NULL,-- �Ҽӵ� ������ ���� ��ȣ
  SEX          CHAR(1)          DEFAULT 'M',  -- ����   
  PRIMARY KEY(STU_ID),            -- �л���ȣ�� �⺻Ű�� ����  
  -- -- ���� ��ȣ�� �ܷ�Ű�� ����
  FOREIGN KEY(COU_ID) REFERENCES COURSE(COU_ID)
);
--���� ���̺� ������ �Է�
INSERT INTO course VALUES(10,'�����','������');
INSERT INTO course VALUES(20,'�ڹ�','������');
INSERT INTO course VALUES(30,'������','Ȳ����');
INSERT INTO course VALUES(40,'��ǥ��','������');

--�л� ���̺� ������ �Է�
INSERT INTO STUDENT VALUES(101,'������', 24,'moon@nate.com',10,'M');
INSERT INTO STUDENT VALUES(102,'���Ѽ�', 22,'five@nate.com',20,'M');
INSERT INTO STUDENT VALUES(103,'���뼮', 22,'again@nate.com',20,'M');
INSERT INTO STUDENT VALUES(104,'����ö', 22,'cook@nate.com',20,'M');
INSERT INTO STUDENT VALUES(105,'��ȫ��', 24,'red@nate.com',10,'M');
INSERT INTO STUDENT VALUES(106,'������', 21,'kim@nate.com',20,'M');
INSERT INTO STUDENT VALUES(107,'�ڽ���', 22,'season@nate.com',20,'M');
INSERT INTO STUDENT VALUES(108,'������', 27,'brother@nate.com',10,'M');
INSERT INTO STUDENT VALUES(109,'������', 22, NULL,20,'F');
INSERT INTO STUDENT VALUES(110,'�ڱ⼮', 34,'flag@nate.com',10,'M');
INSERT INTO STUDENT VALUES(111,'��ȿ��', 24,'od@nate.com',30,'F');
INSERT INTO STUDENT VALUES(112,'��â��', 34,'window@nate.com',30,'M');
INSERT INTO STUDENT VALUES(113,'������', 28, NULL, 10,'M');
INSERT INTO STUDENT VALUES(114,'�̺���', 29,'bbong@nate.com',10,'M');
INSERT INTO STUDENT VALUES(115,'��â��', 24,'chang@nate.com',30,'M');
INSERT INTO STUDENT VALUES(116,'����', 34,'shine@nate.com',10,'M');

commit;

-- �μ� ���̺� �����ϱ�
DROP TABLE EMP;
-- ��� ���̺� �����ϱ�
DROP TABLE DEPT;
-- �޿� ���̺� �����ϱ�
DROP TABLE SALGRADE;
-- �μ� ���̺� �����ϱ�
DROP TABLE EMPLOYEE;
-- ��� ���̺� �����ϱ�
DROP TABLE DEPARTMENT;
-- �޿� ���̺� �����ϱ�
DROP TABLE SALGRADE;

-- �μ� ���̺� �����ϱ�
CREATE TABLE DEPT(
	 DEPTNO NUMBER(2) CONSTRAINT PK_DEPT PRIMARY KEY,
	 DNAME VARCHAR2(14),
	 LOC   VARCHAR2(13) ) ;

-- ��� ���̺� �����ϱ�
CREATE TABLE EMP( 
  	 EMPNO NUMBER(4) CONSTRAINT PK_EMP PRIMARY KEY,
	 ENAME VARCHAR2(10),
 	 JOB   VARCHAR2(9),
	 MGR  NUMBER(4),
	 HIREDATE DATE,
	 SAL NUMBER(7,2),
	 COMM NUMBER(7,2),
	 DEPTNO NUMBER(2) CONSTRAINT FK_DEPTNO REFERENCES DEPT);

 -- �޿� ���̺� �����ϱ�
CREATE TABLE SALGRADE(
	 GRADE NUMBER,
	 LOSAL NUMBER,
	 HISAL NUMBER );

-- ��� ���̺� ���� ������ �߰��ϱ�
INSERT INTO DEPT VALUES(10, '�渮��', '����');
INSERT INTO DEPT VALUES(20, '�λ��', '��õ');
INSERT INTO DEPT VALUES(30, '������', '����'); 
INSERT INTO DEPT VALUES(40, '�����', '����');

-- �μ� ���̺� ���� ������ �߰��ϱ�
INSERT INTO EMP VALUES(1001, '����', '���', 1013, to_date('2007-03-01','yyyy-mm-dd'), 300, NULL, 20);
INSERT INTO EMP VALUES(1002, '�ѿ���', '�븮', 1005, to_date('2007-04-02','yyyy-mm-dd'), 250,   80, 30);
INSERT INTO EMP VALUES(1003, '����ȣ', '����', 1005, to_date('2005-02-10','yyyy-mm-dd'), 500,  100, 30);
INSERT INTO EMP VALUES(1004, '�̺���', '����', 1008, to_date('2003-09-02','yyyy-mm-dd'), 600, NULL, 20);
INSERT INTO EMP VALUES(1005, '�ŵ���', '����', 1005, to_date('2005-04-07','yyyy-mm-dd'), 450,  200, 30);
INSERT INTO EMP VALUES(1006, '�嵿��', '����', 1008, to_date('2003-10-09','yyyy-mm-dd'), 480, NULL, 30);
INSERT INTO EMP VALUES(1007, '�̹���', '����', 1008, to_date('2004-01-08','yyyy-mm-dd'), 520, NULL, 10);
INSERT INTO EMP VALUES(1008, '���켺', '����', 1003, to_date('2004-03-08','yyyy-mm-dd'), 500,    0, 30);
INSERT INTO EMP VALUES(1009, '�ȼ���', '����', NULL, to_date('1996-10-04','yyyy-mm-dd'),1000, NULL, 20);
INSERT INTO EMP VALUES(1010, '�̺���', '����', 1003, to_date('2005-04-07','yyyy-mm-dd'), 500, NULL, 10);
INSERT INTO EMP VALUES(1011, '�����', '���', 1007, to_date('2007-03-01','yyyy-mm-dd'), 280, NULL, 30);
INSERT INTO EMP VALUES(1012, '������', '���', 1006, to_date('2007-08-09','yyyy-mm-dd'), 300, NULL, 20);
INSERT INTO EMP VALUES(1013, '������', '����', 1003, to_date('2002-10-09','yyyy-mm-dd'), 560, NULL, 20);
INSERT INTO EMP VALUES(1014, '���μ�', '���', 1006, to_date('2007-11-09','yyyy-mm-dd'), 250, NULL, 10);

-- �޿� ���̺� ���� ������ �߰��ϱ�
INSERT INTO SALGRADE VALUES (1, 700,1200);
INSERT INTO SALGRADE VALUES (2, 1201,1400);
INSERT INTO SALGRADE VALUES (3, 1401,2000);
INSERT INTO SALGRADE VALUES (4, 2001,3000);
INSERT INTO SALGRADE VALUES (5, 3001,9999);
COMMIT;

select * from emp;

select * from emp where sal >= 500;

select * from emp where deptno =  10;
select * from emp where deptno <> 10;

select * from emp where ename = '����';

commit;

SELECT * FROM EMP WHERE HIREDATE < TO_DATE('2005-01-01','YYYY/MM/DD');

SELECT * FROM EMP WHERE HIREDATE <= '05/01/01';

COMMIT;

SELECT * FROM EMP WHERE DEPTNO = 10 AND JOB='����';

SELECT * FROM EMP WHERE DEPTNO = 10;

SELECT * FROM EMP WHERE SAL >= 400 AND SAL <= 500;

SELECT * FROM EMP WHERE SAL BETWEEN 400 AND 500;

SELECT * FROM EMP WHERE COMM = 80 OR COMM = 100 OR COMM = 200;

SELECT * FROM EMP WHERE COMM IN ( 80, 100, 200);

SELECT * FROM EMP WHERE COMM != 80 OR COMM != 100 OR COMM != 200;

SELECT * FROM EMP WHERE COMM NOT IN ( 80, 100, 200);

SELECT * FROM EMP WHERE JOB LIKE '_��';

SELECT * FROM EMP WHERE  ENAME LIKE '��%';

SELECT * FROM EMP WHERE ENAME LIKE '__��%';

COMMIT;

SELECT ENAME, DEPTNO, COMM FROM EMP;

SELECT ENAME AS �̸�, DEPTNO AS �μ���ȣ, COMM AS ���ʽ� FROM EMP;

SELECT ENAME �̸�, DEPTNO �μ���ȣ, COMM ���ʽ� FROM EMP;

SELECT * FROM EMP WHERE COMM IS NULL;

SELECT * FROM EMP ORDER BY SAL ASC;

SELECT * FROM EMP ORDER BY SAL ASC, ENAME ASC;

SELECT * FROM EMP ORDER BY HIREDATE;

SELECT * FROM EMP WHERE DEPTNO IN (20, 30) ORDER BY SAL DESC;

COMMIT;

--
DROP TABLE GROUP_STAR;
DROP TABLE SINGLE_STAR;
--
CREATE TABLE GROUP_STAR(
	NAME		VARCHAR2(50)
);
--
CREATE TABLE SINGLE_STAR(
	NAME		VARCHAR2(50)
);
INSERT INTO GROUP_STAR VALUES('�¿�');
INSERT INTO GROUP_STAR VALUES('����');
INSERT INTO GROUP_STAR VALUES('����');
INSERT INTO GROUP_STAR VALUES('ȿ��');
INSERT INTO GROUP_STAR VALUES('Ƽ�Ĵ�');
INSERT INTO GROUP_STAR VALUES('����ī');
INSERT INTO GROUP_STAR VALUES('����');
INSERT INTO GROUP_STAR VALUES('���');
INSERT INTO GROUP_STAR VALUES('����');
INSERT INTO GROUP_STAR VALUES('ž');
INSERT INTO GROUP_STAR VALUES('���巡��');
INSERT INTO GROUP_STAR VALUES('�뼺');
INSERT INTO GROUP_STAR VALUES('�¸�');
INSERT INTO GROUP_STAR VALUES('�¾�');

INSERT INTO SINGLE_STAR VALUES('�¿�');
INSERT INTO SINGLE_STAR VALUES('���巡��');
INSERT INTO SINGLE_STAR VALUES('�뼺');
INSERT INTO SINGLE_STAR VALUES('�¾�');
INSERT INTO SINGLE_STAR VALUES('������');
INSERT INTO SINGLE_STAR VALUES('������');
INSERT INTO SINGLE_STAR VALUES('������');
COMMIT;

SELECT * FROM GROUP_STAR
UNION
SELECT * FROM SINGLE_STAR;

SELECT * FROM GROUP_STAR
UNION ALL -- �ߺ��ؼ� ����
SELECT * FROM SINGLE_STAR;

COMMIT;

SELECT * FROM GROUP_STAR
INTERSECT
SELECT * FROM SINGLE_STAR;

SELECT * FROM GROUP_STAR
MINUS
SELECT * FROM SINGLE_STAR;

SELECT * FROM SINGLE_STAR
MINUS
SELECT * FROM GROUP_STAR;

SELECT 24*65 FROM DUAL;

SELECT * FROM DUAL;

SELECT SYSDATE FROM DUAL;

SELECT -10, ABS(-10) FROM DUAL;

SELECT 34.5678, TRUNC(34.5678), ROUND(34.5678), ROUND(34.5678, 2), ROUND(34.5678, -1) FROM DUAL;

SELECT 'Welcome', UPPER('Welcome'), LOWER('Welcome'), INITCAP('wElcome') FROM DUAL;

SELECT LENGTH('ORACLE'), LENGTH('����Ŭ'), LENGTHB('ORACLE'), LENGTHB('����Ŭ') FROM DUAL; --LENGTH: �ѱ� 1���� 1����Ʈ, LENGTHB: �ѱ� 1���� 3����Ʈ

SELECT SUBSTR('WELCOME TO ORACLE', 4, 3) FROM DUAL;

SELECT SUBSTR('WELCOME TO ORACLE', -4, 3) FROM DUAL;

SELECT INSTR('WELCOME TO ORACLE', 4, 3) FROM DUAL;

SELECT LPAD('ORACLE', 20, '#') FROM DUAL;

SELECT RPAD('ORACLE', 20, '#') FROM DUAL;

SELECT HIREDATE, TO_CHAR(HIREDATE, 'YYYY/MM/DD MON DY') FROM EMP;

SELECT TO_CHAR(SYSDATE, 'YYYY/MM/DD, AM HH:MI:SS') FROM DUAL;

SELECT * FROM EMP WHERE HIREDATE = TO_DATE(20070402, 'YYYYMMDD');

SELECT TRUNC(SYSDATE - HIREDATE) FROM EMP;

SELECT TRUNC(SYSDATE - TO_DATE('2003/06/01', 'YYYY/MM/DD')) FROM DUAL;

SELECT '5200' - '3000' FROM DUAL;

SELECT TO_NUMBER('5200','99999') - '3000' FROM DUAL;

SELECT TO_CHAR(SYSDATE -1, 'YYYY/MM/DD') ����,
       TO_CHAR(SYSDATE, 'YYYY/MM/DD') ����,
       TO_CHAR(SYSDATE+1, 'YYYY/MM/DD') ����
FROM DUAL;

SELECT TO_CHAR(HIREDATE, 'YYYYY/MM/DD') �Ի���,
       TO_CHAR(TRUNC(HIREDATE, 'MONTH'), 'YYYY/MM/DD') �Ի���
FROM EMP;

SELECT ENAME, SYSDATE ����, TO_CHAR(HIREDATE, 'YYYY/MM/DD') �Ի���, TRUNC(MONTHS_BETWEEN(SYSDATE, HIREDATE)) �ٹ��޼�
FROM EMP;

SELECT TO_CHAR(NEXT_DAY(SYSDATE, 'ȭ����'), 'YYYY/MM/DD') ȭ���� FROM DUAL;

SELECT COMM, NVL(COMM, 20) FROM EMP;

SELECT ENAME, SAL, COMM, NVL2(COMM, SAL*12 + COMM, SAL*12) FROM EMP;

SELECT NULLIF('A','A'), NULLIF('A','B') FROM DUAL;

SELECT ENAME, SAL, COMM, COALESCE(COMM, SAL, 0) FROM EMP;

SELECT ENAME, DEPTNO, DECODE(DEPTNO, 10, '�渮��', 20, '�λ��') 
FROM EMP
WHERE DEPTNO IN (10,20);
 
SELECT ENAME, DEPTNO,
CASE WHEN DEPTNO = 10 THEN '�渮��' 
WHEN DEPTNO = 20 THEN '�λ��'
ELSE '�����'
END
FROM EMP;

--1) 9���� �Ի��� ����� ����� ������ (SUBSTR)�Լ��� ���

SELECT * FROM EMP
WHERE SUBSTR(HIREDATE, 4, 2) = '09';

--2) 2003�⵵�� �Ի��� ����� �˾Ƴ��� ���� ������

SELECT * FROM EMP
WHERE SUBSTR(HIREDATE, 1, 2) = '03';

--3) ������ �̸��� '��'�� ������ ���

SELECT * FROM EMP
WHERE SUBSTR(ENAME, -1, 1) ='��';

--���޿� ���� �޿��� �λ��ϵ��� �սô�. ������ '����'�� ����� 5%, '����'�� ����� 10% �λ�

SELECT JOB, SAL, DECODE(JOB, '����', SAL+SAL*0.05, '����', SAL+SAL*0.1)
FROM EMP
WHERE JOB IN ('����','����');

--�Ի��� ������ 2�ڸ�(YY), ���� ����(MON)���� ǥ���ϰ�, ������ ���(DY)�� �����Ͽ� ���

SELECT HIREDATE, TO_CHAR(HIREDATE, 'YY/MM/DD DY') 
FROM EMP;

SELECT MAX(SAL), MIN(SAL), SUM(SAL), ROUND(AVG(SAL)), COUNT(SAL) FROM EMP;

SELECT MAX(SAL), MIN(SAL), SUM(SAL), ROUND(AVG(SAL)), COUNT(SAL) 
FROM EMP
GROUP BY DEPTNO
ORDER BY DEPTNO;

--count(*)�Լ��� �̿��Ͽ� ��� ������ ������� ���

SELECT JOB, COUNT(*) FROM EMP
GROUP BY JOB;

--���� ���� ����

SELECT COUNT(*)
FROM EMP
WHERE JOB='����';

--�޿� �ְ��, �޿� �������� ����

SELECT MAX(SAL)-MIN(SAL)
FROM EMP;

--���޺� ����� ���� �޿��� ����Ͻÿ�. ���� �޿��� 500�̸��� �׷��� ���ܽ�Ű��, ����� �޿��� ���� ������������ �����Ͽ� ���

SELECT JOB, MIN(SAL)
FROM EMP
GROUP BY JOB
HAVING MIN(SAL) >= 500
ORDER BY MIN(SAL) DESC;

SELECT JOB, MIN(SAL)
FROM EMP
GROUP BY JOB
HAVING NOT MIN(SAL) < 500
ORDER BY MIN(SAL) DESC;

--�� �μ��� ���� �μ���ȣ, �����, �μ����� ��� ��� ��� �޿��� ����Ͻÿ�. ��� �޿��� �Ҽ��� ��°�ڸ��� �ݿø�

SELECT DEPTNO, COUNT(ENAME), ROUND(AVG(SAL),2)
FROM EMP
GROUP BY DEPTNO
ORDER BY DEPTNO;


--�� �μ��� ���� �μ���ȣ �̸�, ������, �����, �μ� ���� ��� ����� ��� �޿��� ���, ��� �޿��� ������ �Ҽ��� ��° �ڸ��� �ݿø�

SELECT DECODE(DEPTNO, 10, '�渮��', 20, '�λ��', 30, '������', 40, '�����') AS �μ���, DECODE(DEPTNO, 10, '����', 20, '��õ', 30, '����', 40, '����') AS ������, COUNT(*) AS �����, ROUND(AVG(SAL), 0) AS ��ձ޿�
FROM EMP
GROUP BY DEPTNO;

CREATE TABLE EMP01(EMPNO NUMBER(4), ENAME VARCHAR2(14), SAL NUMBER(7, 3));

DESC EMP01;

ALTER TABLE EMP01 ADD(BIRTH DATE);

ALTER TABLE EMP01 MODIFY(ENAME VARCHAR2(21));

ALTER TABLE EMP01 DROP COLUMN BIRTH;

RENAME EMP01 TO EMP02;

DESC EMP02;

DROP TABLE EMP02;

TRUNCATE TABLE EMP01;

DESC EMP01;

--��� ���̺� ����
SELECT * FROM USER_TABLES;

SELECT TABLE_NAME, LOGGING FROM USER_TABLES;

--�����ִ� ����� �� �� ����
SELECT * FROM ALL_TABLES;

--DBA ���̺��� �����ִ� ����� �� �� ����
SELECT OWNER FROM DBA_TABLES;

CREATE TABLE DEPT01(DEPTNO NUMBER(2), DNAME VARCHAR2(14), LOC VARCHAR2(13));

INSERT INTO DEPT01 VALUES(10, 'ȫ�浿', '����');

SELECT * FROM DEPT01;

INSERT INTO DEPT01(DNAME, DEPTNO, LOC) VALUES('ȫ�浿', 10, '����');

INSERT INTO DEPT01(DEPTNO) VALUES (20);

CREATE TABLE EMP02(EMPNO NUMBER(4), ENAME VARCHAR2(10), JOB VARCHAR2(10), HIREDATE DATE, DEPTNO NUMBER(2));

DESC EMP02;

INSERT INTO EMP02 VALUES(1001, '����', '���', '2023/06/13', 20);

SELECT * FROM EMP02;

INSERT INTO EMP02 VALUES(1002, '�̻��', '���', TO_DATE('2002, 06, 01', 'YYYY, MM, DD'),20);

INSERT INTO EMP02 VALUES(1003, '�ڻ��', '���', SYSDATE, 20);

UPDATE EMP02 SET JOB='���' 
WHERE EMPNO=1003;

UPDATE EMP SET SAL = SAL+SAL*0.1 
WHERE DEPTNO=10;

SELECT * FROM EMP02;

DELETE FROM EMP02 WHERE ENAME='����';


DELETE EMP02;

ROLLBACK;

DELETE FROM EMP02 WHERE EMPNO=1001;

INSERT INTO DEPT VALUES(60, 'TEST' ,'TEST');


DESC USER_CONSTRAINTS;

--������� ���� ������ �÷����� �˻��ϱ�(��ųʸ�)

SELECT * FROM USER_CONSTRAINTS;

DESC DEPT;

DESC EMP;

DROP TABLE EMP01;

CREATE TABLE EMP01(EMPNO NUMBER(4) NOT NULL, ENAME  VARCHAR2(10) NOT NULL, JOB VARCHAR2(9), DEPTNO NUMBER(2));

INSERT INTO EMP01 VALUES(1001, '�̻��', '���',30);

CREATE TABLE EMP03(EMPNO NUMBER(4) UNIQUE, ENAME  VARCHAR2(10) NOT NULL, JOB VARCHAR2(9), DEPTNO NUMBER(2));

INSERT INTO EMP03 VALUES(1001, '�̻��','���',30);

SELECT * FROM USER_CONSTRAINTS;

CREATE TABLE EMP04(EMPNO NUMBER(4) CONSTRAINT EMP04_EMPNO_UK UNIQUE, ENAME  VARCHAR2(10) NOT NULL, JOB VARCHAR2(9), DEPTNO NUMBER(2));

CREATE TABLE EMP05(EMPNO NUMBER(4) CONSTRAINT EMP05_EMPNO_PK PRIMARY KEY, ENAME VARCHAR2(10) CONSTRAINT EMP05_ENAME_NN NOT NULL, JOB VARCHAR2(9), DEPTNO NUMBER(2));

CREATE TABLE EMP06(EMPNO NUMBER(4) CONSTRAINT EMP06_EMPNO_PK PRIMARY KEY, ENAME VARCHAR2(10) CONSTRAINT EMP06_ENAME_NN NOT NULL, JOB VARCHAR2(9), DEPTNO NUMBER(2) CONSTRAINT EMP06_DEPTNO_FK REFERENCES DEPT(DEPTNO));

INSERT INTO EMP06 VALUES(1005, '�̻��', '���', 20);

CREATE TABLE EMP07(EMPNO NUMBER(4) CONSTRAINT EMP07_EMPNO_PK PRIMARY KEY, ENAME VARCHAR2(10) CONSTRAINT EMP07_ENAME_NN NOT NULL, SAL NUMBER(7, 2) CONSTRAINT EMP07_SAL_CK CHECK(SAL BETWEEN 300 AND 2000), 
DEPTNO NUMBER(2) CONSTRAINT EMP_07_DEPTNO_FK REFERENCES DEPT(DEPTNO));

CREATE TABLE DEPT04(DEPTNO NUMBER(2) PRIMARY KEY, DNAME VARCHAR2(14), LOC VARCHAR2(13) DEFAULT '����');

INSERT INTO DEPT04(DEPTNO) VALUES(10);

SELECT * FROM DEPT04;

CREATE TABLE MEMBER01(NAME VARCHAR2(10), ADDRESS VARCHAR2(30), HPPHONE VARCHAR2(16), CONSTRAINT MEMBER01_COMBO_PK PRIMARY KEY(NAME, HPPHONE));

SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME='MEMBER01';

DROP TABLE EMP01;

CREATE TABLE EMP01(EMPNO NUMBER(4), ENAME VARCHAR2(10) NOT NULL, JOB VARCHAR2(10), DEPTNO NUMBER(2));

ALTER TABLE EMP01 ADD CONSTRAINT EMP01_P PRIMARY KEY(EMPNO);

DESC EMP01;

--NOT NULL�� �ٲٷ��� ADD�� �ƴϰ� MODIFY�ؾ���
ALTER TABLE EMP01 MODIFY JOB NOT NULL;

ALTER TABLE EMP01 DROP CONSTRAINT EMP01_P;

--���������� ��Ȱ��ȭ
ALTER TABLE EMP DISABLE CONSTRAINT FK_DEPTNO;

--���������� Ȱ��ȭ
ALTER TABLE EMP ENABLE CONSTRAINT FK_DEPTNO;

SELECT * FROM DEPT, EMP;

--SELF JOIN
SELECT D1.DEPTNO, D2.DNAME FROM DEPT D1, DEPT D2;

--EQUI JOIN(SUBQUERY���� JOIN�� ������ �� �����Ƿ� JOIN ����, EQUI JOIN, AINSI JOIN ����, CROSS JOIN �����)
SELECT * FROM EMP, DEPT WHERE EMP.DEPTNO = DEPT.DEPTNO;

--CROSS JOIN
SELECT EMP.ENAME, DEPT.DNAME FROM EMP, DEPT WHERE EMP.DEPTNO = DEPT.DEPTNO AND ENAME='�̹���';
SELECT E1.ENAME, D1.DNAME FROM EMP E1, DEPT D1 WHERE E1.DEPTNO = D1.DEPTNO AND ENAME='�̹���';

SELECT * FROM SALGRADE;

--3�� JOIN
SELECT E.ENAME, D.DNAME, E.SAL, S.GRADE FROM EMP E, DEPT D, SALGRADE S WHERE E.DEPTNO= D.DEPTNO AND E.SAL*2 BETWEEN S.LOSAL AND S.HISAL;

--SELF JOIN
SELECT E1.ENAME �����, E2.ENAME �Ŵ����� FROM EMP E1, EMP E2 WHERE E1.MGR = E2.EMPNO AND E1.ENAME='�̹���';

--ANSI JOIN - INNER JOIN
SELECT EMP.ENAME, DEPT.DNAME FROM EMP INNER JOIN DEPT ON EMP.DEPTNO = DEPT.DEPTNO;

--ANSI JOIN - LEFT OUTER JOIN
SELECT MEMBER.ENAME, MANAGER.ENAME FROM EMP MEMBER LEFT OUTER JOIN EMP MANAGER ON MEMBER.MGR = MANAGER.EMPNO;

--ANSI JOIN - RIGHT OUTER JOIN
SELECT MEMBER.ENAME, MANAGER.ENAME FROM EMP MEMBER RIGHT OUTER JOIN EMP MANAGER ON MEMBER.MGR = MANAGER.EMPNO;

--ANSI JOIN - FULL OUTER JOIN
SELECT MEMBER.ENAME, MANAGER.ENAME FROM EMP MEMBER FULL OUTER JOIN EMP MANAGER ON MEMBER.MGR = MANAGER.EMPNO;

-- �渮�ο��� �ٹ��ϴ� ����� �̸��� �Ի����� ����ϱ�

SELECT E.ENAME, E.HIREDATE, D.DNAME FROM EMP E, DEPT D 
WHERE E.DEPTNO=D.DEPTNO AND D.DEPTNO=10;

-- ANSI JOIN�� ����Ͽ� ��õ���� �ٹ��ϴ� ����̸��� �޿��� ����ϱ� V

SELECT E.ENAME, E.SAL 
FROM EMP E INNER JOIN DEPT D 
ON E.DEPTNO = D.DEPTNO AND D.LOC='��õ';

-- ��� ���̺�� �μ� ���̺��� �����Ͽ� ����̸��� �μ���ȣ, �μ����� ����Ͻÿ� V

SELECT E.ENAME, D.DEPTNO, D.DNAME 
FROM EMP E LEFT OUTER JOIN DEPT D
ON E.DEPTNO = D.DEPTNO;

-- ������ ������ ����� �̸�, �μ����� ����Ͻÿ�

SELECT E1.ENAME, E1.JOB, E2.ENAME 
FROM EMP E1, EMP E2
WHERE E1.MGR = E2.EMPNO AND E2.ENAME = '���켺';

-- ���ӻ���� ���켺�� ������� �̸��� ������ ����Ͻÿ� V

?SELECT E2.ENAME, E1.JOB, E1.ENAME, D1.LOC 
FROM EMP E1, EMP E2, DEPT D1
WHERE E1.DEPTNO = D1.DEPTNO AND E1.ENAME = '���켺' AND E2.ENAME <> '���켺';

--SUBQUERY
SELECT DEPTNO FROM EMP 
WHERE ENAME='�̹���';

SELECT DNAME 
FROM DEPT 
WHERE DEPTNO=(SELECT DEPTNO FROM EMP WHERE ENAME='�̹���');

--������� ��� �޿����� �� ���� �޿��� �޴� ����� �˻�
SELECT * 
FROM EMP 
WHERE SAL >= (SELECT ROUND(AVG(SAL),2) FROM EMP);

--�޿��� 500������ �ʰ��ϴ� ����� �Ҽӵ� �μ��� �μ���ȣ�� ���
SELECT DISTINCT DEPTNO
FROM EMP
WHERE SAL > 500;

--�޿��� 500������ �ʰ��ϴ� ����� ���� �μ��� �ٹ��ϴ� ���
SELECT *
FROM EMP
WHERE DEPTNO IN(SELECT DISTINCT DEPTNO FROM EMP WHERE SAL > 500);

SELECT MAX(SAL) 
FROM EMP 
WHERE DEPTNO = 30;

SELECT * FROM EMP 
WHERE SAL > 500;

SELECT ENAME, SAL 
FROM EMP 
WHERE SAL > (SELECT MAX(SAL) FROM EMP WHERE DEPTNO = 30);

--ALL: SUBQUERY ����� ���ؼ� ��� ���� ��
SELECT ENAME, SAL 
FROM EMP 
WHERE SAL > ALL(SELECT SAL FROM EMP WHERE DEPTNO=30);

--ANY: SUBQUERY�� �ϳ��� ���̾ ��
SELECT ENAME, SAL FROM EMP WHERE SAL > ALL(SELECT MIN(SAL) FROM EMP WHERE DEPTNO = 30);
SELECT ENAME, SAL FROM EMP WHERE SAL > ANY(SELECT SAL FROM EMP WHERE DEPTNO = 30);

--EXISTS ������: �������������� ��� ���� ���� �����⸸ �ϸ� �ٷ� �������� ������� ������ ����ȭ�� ������ ��������
SELECT * FROM DEPT WHERE EXISTS (SELECT * FROM EMP WHERE DEPTNO = 30);

SELECT * FROM DEPT WHERE EXISTS (SELECT * FROM EMP WHERE EMP.DEPTNO = DEPT.DEPTNO);

--1. ���� ������ �̿��Ͽ� "������"���� �ٹ��ϴ� ��� ����� �̸��� �޿��� ����϶�.

?SELECT DNAME, SAL
FROM EMP
WHERE DEPTNO = (SELECT DEPTNO FROM DEPT WHERE DNAME='������');

DROP TABLE EMP03;

--��, ���������� ������� ����
CREATE TABLE EMP03 AS SELECT * FROM EMP;

CREATE TABLE EMP04 AS SELECT ENAME, SAL, JOB FROM EMP;

--���̺��� ������ ����
CREATE TABLE EMP05 AS SELECT * FROM EMP WHERE DEPTNO=100;

--INSERT�� ��������
DROP TABLE DEPT01;
CREATE TABLE DEPT01 AS SELECT FROM DEPT;

INSERT INTO DEPT01
SELECT * FROM DEPT;

--UPDATE��
UPDATE DEPT01 SET LOC = (SELECT LOC FROM DEPT WHERE DEPTNO = 40)
WHERE DEPTNO=20;


DROP TABLE EMP02;
CREATE TABLE EMP02 AS SELECT * FROM EMP;

--DELETE��
DELETE FROM EMP02 WHERE DEPTNO = (SELECT DEPTNO FROM DEPT WHERE DNAME = '������');

--VIEW 
DESC USER_VIEWS;

--���� ����ϴ� �� SELECT���� VIEW�� ����� ��
CREATE VIEW EMP_VIEW30 AS SELECT EMPNO, ENAME, DEPTNO FROM EMP WHERE DEPTNO=30;

INSERT INTO EMP_VIEW30 VALUES(1040, 'ȫ�浿', 20);

SELECT * FROM EMP_VIEW30;

SELECT * FROM EMP;



CREATE OR REPLACE VIEW VIEW_CHECK30
AS
SELECT * FROM EMP;

--�並 ���ؼ� ������ ���̺��� �ٲ� �� ����
UPDATE VIEW_CHECK30 SET DEPTNO=20 WHERE EMPNO=1002;

-- WHTH CHECK OPTION (���� �÷� ���� �������� ���ϰ�)
CREATE OR REPLACE VIEW VIEW_CHECK30
AS
SELECT * FROM EMP WHERE DEPTNO=30 WITH CHECK OPTION;

--�並 ���ؼ� ������ ���̺��� �ٲ� �� ����
UPDATE VIEW_CHECK30 SET DEPTNO=20 WHERE EMPNO=1005;

CREATE OR REPLACE VIEW VIEW_HIRE
AS
SELECT EMPNO, EAME, HIREDATE FROM EMP ORDER BY HIREDATE;

SELECT ROWNUM, EMPNO, ENAME, HIREDATE FROM VIEW_HIRE;

SELECT ROWNUM, EMPNO, ENAME, HIREDATE FROM VIEW_HIRE WHERE ROWNUM <= 5;

SELECT ROWNUM, EMPNO, ENAME, HIREDATE
FROM
(SELECT EMPNO, ENAME, HIREDATE FROM EMP ORDER BY HIREDATE)
WHERE ROWNUM <= 5;

SELECT ROWNUM, ENAME, SAL
FROM
(SELECT ENAME, SAL FROM EMP ORDER BY SAL DESC)
WHERE ROWNUM <= 3;

--PL/SQL
BEGIN
    DBMS_OUTPUT.PUT_LINE('HELLO ORACLE');
END;
/

--���Թ����� ������ ���� �����ϱ�
DECLARE
    VEMPNO NUMBER(4); --��Į�� ����
    VENAME VARCHAR2(10);
        VEMPNO1 EMP.EMPNO%TYPE; --���۷��� ����
    VENAME1 EMP.ENAME%TYPE;
BEGIN
    VEMPNO := 1001; 
    VENAME := 'ȫ�浿';
    VEMPNO := 2001;
    VENAME := '�̼���';
    DBMS_OUTPUT.PUT_LINE(VEMPNO);
    DBMS_OUPUT.PUT_LINE(VENAME);
END;
/


DECLARE
        VEMPNO1 EMP.EMPNO%TYPE; --���۷��� ����
    VENAME1 EMP.ENAME%TYPE;
BEGIN
    SELECT EMPNO, ENAME INTO VEMPNO, VENAME
    FROM EMP
    WHERE ENAME='����';
    DBMS_OUTPUT.PUT_LINE(VEMPNO || '' || VENAME);
END;
/


-- �μ���ȣ�� �μ��� �˾Ƴ���
declare
  vempno emp.empno%type;
  vename emp.ename%type;
  vdeptno emp.deptno%type;
  vdname varchar2(20) := null;
begin
   select empno, ename, deptno
   into vempno, vename, vdeptno
   from emp
   where empno=1001;
   if( vdeptno = 10) then
      vdname := '������';
   end if;
   if( vdeptno = 20) then
      vdname := '�ѹ���';
   end if;
   if( vdeptno = 30) then
      vdname := '�λ��';
   end if;
   if( vdeptno = 40) then
      vdname := '�����';
   end if;
   dbms_output.put_line(  vempno || '  ' || vename || '  ' || vdeptno || '  ' || vdname );
end;
/

DECLARE
    VEMP EMP%TYPE; --���۷��� ����
    ANNSAL NUMBER(7,2);
BEGIN
    SELECT EMPNO, ENAME INTO VEMPNO, VENAME
    FROM EMP
    WHERE ENAME='����';
    IF(VEMP.COMM IS NULL) THEN
    ANNSAL := VEMP.SAL*12;
    ELSE
    ANNSAL := VEMP.SAL*12+VEMP.COMM;
    END IF;
    DBMS_OUTPUT.PUT_LINE(VEMPNO.EMPNO || '' || VEMP.SAL || '' || ANNSAL);
END;
/

--�ݺ���
--LOOP FOR WHILE EXIT

DECLARE
    N NUMBER := 1;
BEGIN
    LOOP 
        DBMS_OUPUT.PUT_LINE(N);
        N := N+1;
        IF(N>5) THEN
        EXIT;
        END IF;
        END LOOP;
END;
/

-- �ݺ���
-- loop for while exit
declare
   n number := 1;
begin
   loop
      dbms_output.put_line( n );
      n := n+1;
      if( n>5) then
         exit;
      end if;
   end loop;
end;
/
-- for��
declare
begin
  for n in 1..5 loop
     dbms_output.put_line( n );
  end loop;
end;
/
-- while loop��
declare
  n number := 1;
begin
 while n<=5  loop
    dbms_output.put_line( n );
    n := n+1;
 end loop;
end;
/

DROP TABLE EMP01;

CREATE TABLE EMP01
AS
SELECT * FROM EMP;

SELECT * FROM EMP;

CREATE OR REPLACE PROCEDURE DEL_ALL
IS BEGIN
    DELETE FROM EMP01;
    COMMIT;
END;
/

EXECUTE DEL_ALL;

SELECT * FROM EMP01;

SELECT * FROM USER_SOURCE;

CREATE OR REPLACE PROCEDURE
    DEL_ENAME(VENAME EMP01.ENAME%TYPE)
IS
BEGIN
    DELETE FROM EMP01 WHERE ENAME LIKE VENAME;
    COMMIT;
END;
/

EXECUTE DEL_ENAME('�ѿ���');

SELECT * FROM EMP01;

CREATE OR REPLACE PROCEDURE SEL_EMPNO
(VEMPNO IN EMP.EMPNO%TYPE,
VENAME OUT EMP.ENAME%TYPE,
VSAL OUT EMP.SAL%TYPE,
VJOB OUT EMP.JOB%TYPE)
IS
BEGIN
    SELECT ENAME, SAL, JOB INTO VENAME, VSAL, VJOB
    FROM EMP
    WHERE EMPNO = VEMPNO;
END;
/

VARIABLE VAR_NAME VARCHAR2(15);
VARIABLE VAR_SAL NUMBER;
VARIABLE VAR_JOB VARCHAR2(10);

EXECUTE SEL_EMPNO(1001, VAR_NAME, VAR_SAL, VAR_JOB);

VARIABLE VAR_RES NUMBER;

EXECUTE :VAR_RES := CAL_BONUS(1003);

PRIINT VAR_RES;

SELECT SAL, CAL__BONUS(1003), EMPNO FROM EMP WHERE EMPNO=1003;

--Ŀ��
--BEGIN �ȿ� ����� ������ ���� ������ �ݺ����� Ŀ���� ����ؾ� ��

SELECT * FROM DEPT;

CREATE OR REPLACE PROCEDURE CURSOR_SAMPLE01
IS
    VDEPT DEPT%ROWTYPE;
    CURSOR CL
    IS
    SELECT * FROM DEPTL
BEGIN
    DBMS_OUPUT.PUT_LINE('�μ���ȣ �μ��� ������');
    DBMS_OUPUT.PUT_LINE('-------------------');
    OPEN CL;
    LOOP
        FETCH CL INTO VDEPT.DEPTNO, VDEPT.DNAME, VDEPT.LOC;
        EXIT WHEN CL%NOTFOUND;
        DBMS_OUPUT.PUT_LINE(VDEPT.DEPTNO || '' || VDEPT.DNAME || '' || VDEPT.LOC);
    END LOOP;
    CLOSE CL;
END;
/

DROP TABLE EMP02;

CREATE TABLE EMP02(EMPNO VARCHAR2(4) PRIMARY KEY, ENAME VARCHAR2(20), JOB VARCHAR2(20));

SELECT * FROM EMP02;

CREATE OR REPLACE TRIGGER TRG_01
AFTER INSERT
ON EMP02
BEGIN
    DBMS_OUTPUT.PUT_LINE('���Ի���� �Ի��߽��ϴ�');
END;
/

INSERT INTO EMP02 VALUES(1001, '����','���');

INSERT INTO EMP02 VALUES(1002, '�ѿ���','���');

DROP TABLE SAL01;

CREATE TABLE SAL01
    (SALNO NUMBER(4) PRIMARY KEY, SAL NUMBER(7,2), EMPNO NUMBER(4) REFERENCES EMP02(EMPNO));
    
CREATE SEQUENCE SAL01_SALNO_SEQ;

-- 1�ܰ� Ʈ���� �����ϱ�
CREATE OR REPLACE TRIGGER TRG_02
AFTER INSERT
ON EMP02
FOR EACH ROW -- �� �྿ Ʈ���� ��� �߻�
BEGIN
    INSERT INTO SAL01 VALUES(
    SAL01_SALNO_SEQ.NEXTAVL, 300, :NEW.EMPNO);   
END;
/

INSERT INTO EMP02 VALUES(1003, 'ȫ�浿','�븮');

INSERT INTO EMP02 VALUES(1004, '�̼���','���');

SELECT * FROM EMP02;

SELECT * FROM SAL01;

CREATE OR REPLACE TRIGGER TRG_03
AFTER DELETE
ON EMP02
BEGIN
DELETE FROM SAL01 WHERE EMPNO = :OLD.EMPNO;
END;
/

DELETE FROM EMP02 WHERE EMPNO = 1004;

-- ���ν��� : pl/sql���� ��� ����ϱ� ���ؼ� �Լ��� ���� �� return�� ����
-- �Լ� : pl/sql���� ��� ����ϱ� ���ؼ� �Լ��� ���� �� return�� �ִ�
-- Ʈ���� : �̺�Ʈ�� ó��
-- ��� ����� �����ϴ� ���ν��� �����
drop table emp01;
create table emp01
as
select * from emp;
select * from emp01;
-- ����� ������ �����
-- ���ν��� �����
create or replace procedure del_all
is
begin
   delete from emp01;
   commit;
end;
/
execute del_all; -- �����ϱ�
select * from emp01;
-- ���� ���ν��� ��ȸ�ϱ� , ������ ��ųʸ�
select * from user_source;
-- �ѿ��� ���ڵ常 �����ϱ�
create or replace procedure
    del_ename(  vename   emp01.ename%type    )
is
begin
   delete from emp01 where ename like vename;
   commit;
end;
/
execute del_ename( '�ѿ���' );
select * from emp01;
execute del_ename( '����ȣ' );
--���ν����� ���� �� [mode]  in, out, inout �Ű�����
create or replace procedure sel_empno
  (
      vempno in emp.empno%type,
      vename out emp.ename%type,
      vsal out emp.sal%type,
      vjob out emp.job%type
  )
is
begin
  select ename, sal, job into vename, vsal, vjob
  from emp
  where empno = vempno;
end;
/
-- ���ε� ���� �����ϱ�
variable var_name varchar2(15);
variable var_sal number;
variable var_job varchar2(9);
-- ���ν����� �����ϱ�
execute sel_empno( 1001, :var_name, :var_sal,  :var_job );
-- ���ε� ������ ����ϱ�
print var_name;
print var_sal;
print var_job;
-- �Լ�
-- �䱸������ Ư�� ���ʽ��� �����ϴ� �����Լ� �����
create or replace function cal_bonus
   (
      vempno in emp.empno%type
    )
    return number
is
   vsal number(7,2);
begin
  select sal into vsal
  from emp
  where empno= vempno;
  return (vsal * 200 );
end;
/
-- �Լ��� �����Ϸ��� ���ε� ���� �������ְ�
-- ������ ���� ������ ��´�
variable var_res number;
execute  :var_res := cal_bonus( 1003 );
print var_res;
select sal, cal_bonus( 1003 ), empno from emp where empno=1003;


������
  ���� 2:56
-- Ŀ��
-- begin�ȿ� ����� ������ ���� ������ �ݺ����� Ŀ���� ����ؾ� �Ѵ�.
-- ���1)
-- ���2)
-- Ŀ���� ����Ͽ� �μ� ���̺��� ��� ������ ����ϴ� ���� ���ν��� �����
select * from dept;
-- ���1)
create or replace procedure cursor_sample01
is
    vdept dept%rowtype;
    cursor c1
    is
    select * from dept;
begin
    dbms_output.put_line('�μ���ȣ     �μ���      ������ ');
    dbms_output.put_line('-----------------------------');
    open c1;
    loop
       fetch  c1 into vdept.deptno, vdept.dname, vdept.loc;
       exit  when  c1%notfound;
       dbms_output.put_line( vdept.deptno || '       ' || vdept.dname || '       ' || vdept.loc );
    end loop;
    close c1;
end;
/
execute cursor_sample01;
-- ���2) for  ���ڵ�� in Ŀ���� loop
--             �����1
--             �����2
--        end loop;
create or replace procedure cursor_sample02
is
    vdept dept%rowtype;
    cursor c1
    is
    select * from dept;
begin
    dbms_output.put_line('�μ���ȣ     �μ���      ������ ');
    dbms_output.put_line('-----------------------------');
    for   vdept  in  c1  loop
        exit when c1%notfound;
        dbms_output.put_line( vdept.deptno || '       ' || vdept.dname || '       ' || vdept.loc );
    end loop;
end;
/
execute cursor_sample02;
�� �׸�
2:56
-- Ʈ����
drop table emp02;
create table emp02(
    empno number(4) primary key,
    ename varchar2(20),
    job varchar2(20)
);
select * from emp02;
-- ���Ե� �� ���Ի���� �Ի��߽��ϴ� ��µǰ�
create or replace trigger trg_01
after insert
on emp02
begin
   dbms_output.put_line('���Ի���� �Ի��߽��ϴ�');
end;
/
insert into emp02 values( 1001, '����','���');
insert into emp02 values( 1002, '�ѿ���','���');
select * from emp02;
-- �޿� ������ �ڵ����� �߰��ϴ� Ʈ���� �ۼ��ϱ�
drop table sal01;
create table sal01
  ( salno number(4) primary key,
    sal number(7,2),
    empno number(4) references emp02( empno ) );
-- ������̺� ���Ի�� �ԷµǸ� �޿����̺� �ڵ����� �ԷµǱ�
-- ���� �ڵ����� ��ȣ ���̴� ��  salno �ڵ� ���� ������ �����
create sequence sal01_salno_seq;
-- 1�ܰ� Ʈ���Ÿ� �����Ѵ�
create or replace trigger trg_02
 after  insert -- ���� �Ŀ�
 on emp02  -- ���� ���̺�
 for each row -- ���྿ Ʈ���� ��� �߻�
begin
  insert into sal01 values(  sal01_salno_seq.nextval, 300, :new.empno  );
end;
/
-- ������ emp02���� �����ϱ�
insert into emp02 values ( 1003, 'ȫ�浿', '�븮');
insert into emp02 values ( 1004, '�̼���', '���');
select * from emp02;
select * from sal01;
-- �޿� ������ �ڵ������ϴ� Ʈ���� �ۼ��ϱ�
delete from emp02 where empno=1003; -- �ܷ�Ű ����� ���Ͽ� ������ ��
-- Ʈ����
create or replace trigger trg_03
  before delete
  on emp02
  for each row
begin
   delete from sal01 where empno = :old.empno;
end;
/
delete from emp02 where empno=1004;
select * from emp02;
select * from sal01;


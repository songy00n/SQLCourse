show user;

DROP TABLE STUDENT;
DROP TABLE COURSE;
CREATE TABLE COURSE (
  COU_ID       NUMBER(4)      NOT NULL,   -- 과정 번호
  COU_NAME     VARCHAR(20)    NULL,  -- 과정명
  TEA_NAME     VARCHAR(20)    NULL,  -- 강사명
  PRIMARY KEY(COU_ID)   -- 과정 번호를 기본키로 지정
);
CREATE TABLE STUDENT (
  STU_ID       NUMBER(4)        NOT NULL, -- 학생번호, 널 값 허용 안 함
  STU_NAME     VARCHAR(20)      NULL, -- 학생명
  AGE          NUMBER(4)        NULL, -- 나이
  STU_EMAIL    VARCHAR(20)      NULL, -- 이메일
  COU_ID       NUMBER(4)        NULL,-- 소속된 과정의 과정 번호
  SEX          CHAR(1)          DEFAULT 'M',  -- 성별   
  PRIMARY KEY(STU_ID),            -- 학생번호를 기본키로 지정  
  -- -- 과정 번호를 외래키로 지정
  FOREIGN KEY(COU_ID) REFERENCES COURSE(COU_ID)
);
--과정 테이블 데이터 입력
INSERT INTO course VALUES(10,'모바일','성윤정');
INSERT INTO course VALUES(20,'자바','김혜경');
INSERT INTO course VALUES(30,'윈도우','황연주');
INSERT INTO course VALUES(40,'웹표준','전혜영');

--학생 테이블 데이터 입력
INSERT INTO STUDENT VALUES(101,'문종헌', 24,'moon@nate.com',10,'M');
INSERT INTO STUDENT VALUES(102,'오한솔', 22,'five@nate.com',20,'M');
INSERT INTO STUDENT VALUES(103,'제용석', 22,'again@nate.com',20,'M');
INSERT INTO STUDENT VALUES(104,'정국철', 22,'cook@nate.com',20,'M');
INSERT INTO STUDENT VALUES(105,'박홍진', 24,'red@nate.com',10,'M');
INSERT INTO STUDENT VALUES(106,'김현우', 21,'kim@nate.com',20,'M');
INSERT INTO STUDENT VALUES(107,'박시준', 22,'season@nate.com',20,'M');
INSERT INTO STUDENT VALUES(108,'김준형', 27,'brother@nate.com',10,'M');
INSERT INTO STUDENT VALUES(109,'문혜진', 22, NULL,20,'F');
INSERT INTO STUDENT VALUES(110,'박기석', 34,'flag@nate.com',10,'M');
INSERT INTO STUDENT VALUES(111,'윤효선', 24,'od@nate.com',30,'F');
INSERT INTO STUDENT VALUES(112,'안창범', 34,'window@nate.com',30,'M');
INSERT INTO STUDENT VALUES(113,'공지훈', 28, NULL, 10,'M');
INSERT INTO STUDENT VALUES(114,'이봉림', 29,'bbong@nate.com',10,'M');
INSERT INTO STUDENT VALUES(115,'안창범', 24,'chang@nate.com',30,'M');
INSERT INTO STUDENT VALUES(116,'장희성', 34,'shine@nate.com',10,'M');

commit;

-- 부서 테이블 제거하기
DROP TABLE EMP;
-- 사원 테이블 제거하기
DROP TABLE DEPT;
-- 급여 테이블 제거하기
DROP TABLE SALGRADE;
-- 부서 테이블 제거하기
DROP TABLE EMPLOYEE;
-- 사원 테이블 제거하기
DROP TABLE DEPARTMENT;
-- 급여 테이블 제거하기
DROP TABLE SALGRADE;

-- 부서 테이블 생성하기
CREATE TABLE DEPT(
	 DEPTNO NUMBER(2) CONSTRAINT PK_DEPT PRIMARY KEY,
	 DNAME VARCHAR2(14),
	 LOC   VARCHAR2(13) ) ;

-- 사원 테이블 생성하기
CREATE TABLE EMP( 
  	 EMPNO NUMBER(4) CONSTRAINT PK_EMP PRIMARY KEY,
	 ENAME VARCHAR2(10),
 	 JOB   VARCHAR2(9),
	 MGR  NUMBER(4),
	 HIREDATE DATE,
	 SAL NUMBER(7,2),
	 COMM NUMBER(7,2),
	 DEPTNO NUMBER(2) CONSTRAINT FK_DEPTNO REFERENCES DEPT);

 -- 급여 테이블 생성하기
CREATE TABLE SALGRADE(
	 GRADE NUMBER,
	 LOSAL NUMBER,
	 HISAL NUMBER );

-- 사원 테이블에 샘플 데이터 추가하기
INSERT INTO DEPT VALUES(10, '경리부', '서울');
INSERT INTO DEPT VALUES(20, '인사부', '인천');
INSERT INTO DEPT VALUES(30, '영업부', '용인'); 
INSERT INTO DEPT VALUES(40, '전산부', '수원');

-- 부서 테이블에 샘플 데이터 추가하기
INSERT INTO EMP VALUES(1001, '김사랑', '사원', 1013, to_date('2007-03-01','yyyy-mm-dd'), 300, NULL, 20);
INSERT INTO EMP VALUES(1002, '한예슬', '대리', 1005, to_date('2007-04-02','yyyy-mm-dd'), 250,   80, 30);
INSERT INTO EMP VALUES(1003, '오지호', '과장', 1005, to_date('2005-02-10','yyyy-mm-dd'), 500,  100, 30);
INSERT INTO EMP VALUES(1004, '이병헌', '부장', 1008, to_date('2003-09-02','yyyy-mm-dd'), 600, NULL, 20);
INSERT INTO EMP VALUES(1005, '신동협', '과장', 1005, to_date('2005-04-07','yyyy-mm-dd'), 450,  200, 30);
INSERT INTO EMP VALUES(1006, '장동건', '부장', 1008, to_date('2003-10-09','yyyy-mm-dd'), 480, NULL, 30);
INSERT INTO EMP VALUES(1007, '이문세', '부장', 1008, to_date('2004-01-08','yyyy-mm-dd'), 520, NULL, 10);
INSERT INTO EMP VALUES(1008, '감우성', '차장', 1003, to_date('2004-03-08','yyyy-mm-dd'), 500,    0, 30);
INSERT INTO EMP VALUES(1009, '안성기', '사장', NULL, to_date('1996-10-04','yyyy-mm-dd'),1000, NULL, 20);
INSERT INTO EMP VALUES(1010, '이병헌', '과장', 1003, to_date('2005-04-07','yyyy-mm-dd'), 500, NULL, 10);
INSERT INTO EMP VALUES(1011, '조향기', '사원', 1007, to_date('2007-03-01','yyyy-mm-dd'), 280, NULL, 30);
INSERT INTO EMP VALUES(1012, '강혜정', '사원', 1006, to_date('2007-08-09','yyyy-mm-dd'), 300, NULL, 20);
INSERT INTO EMP VALUES(1013, '박중훈', '부장', 1003, to_date('2002-10-09','yyyy-mm-dd'), 560, NULL, 20);
INSERT INTO EMP VALUES(1014, '조인성', '사원', 1006, to_date('2007-11-09','yyyy-mm-dd'), 250, NULL, 10);

-- 급여 테이블에 샘플 데이터 추가하기
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

select * from emp where ename = '김사랑';

commit;

SELECT * FROM EMP WHERE HIREDATE < TO_DATE('2005-01-01','YYYY/MM/DD');

SELECT * FROM EMP WHERE HIREDATE <= '05/01/01';

COMMIT;

SELECT * FROM EMP WHERE DEPTNO = 10 AND JOB='과장';

SELECT * FROM EMP WHERE DEPTNO = 10;

SELECT * FROM EMP WHERE SAL >= 400 AND SAL <= 500;

SELECT * FROM EMP WHERE SAL BETWEEN 400 AND 500;

SELECT * FROM EMP WHERE COMM = 80 OR COMM = 100 OR COMM = 200;

SELECT * FROM EMP WHERE COMM IN ( 80, 100, 200);

SELECT * FROM EMP WHERE COMM != 80 OR COMM != 100 OR COMM != 200;

SELECT * FROM EMP WHERE COMM NOT IN ( 80, 100, 200);

SELECT * FROM EMP WHERE JOB LIKE '_장';

SELECT * FROM EMP WHERE  ENAME LIKE '이%';

SELECT * FROM EMP WHERE ENAME LIKE '__성%';

COMMIT;

SELECT ENAME, DEPTNO, COMM FROM EMP;

SELECT ENAME AS 이름, DEPTNO AS 부서번호, COMM AS 보너스 FROM EMP;

SELECT ENAME 이름, DEPTNO 부서번호, COMM 보너스 FROM EMP;

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
INSERT INTO GROUP_STAR VALUES('태연');
INSERT INTO GROUP_STAR VALUES('유리');
INSERT INTO GROUP_STAR VALUES('윤아');
INSERT INTO GROUP_STAR VALUES('효연');
INSERT INTO GROUP_STAR VALUES('티파니');
INSERT INTO GROUP_STAR VALUES('제시카');
INSERT INTO GROUP_STAR VALUES('수영');
INSERT INTO GROUP_STAR VALUES('써니');
INSERT INTO GROUP_STAR VALUES('서현');
INSERT INTO GROUP_STAR VALUES('탑');
INSERT INTO GROUP_STAR VALUES('지드래곤');
INSERT INTO GROUP_STAR VALUES('대성');
INSERT INTO GROUP_STAR VALUES('승리');
INSERT INTO GROUP_STAR VALUES('태양');

INSERT INTO SINGLE_STAR VALUES('태연');
INSERT INTO SINGLE_STAR VALUES('지드래곤');
INSERT INTO SINGLE_STAR VALUES('대성');
INSERT INTO SINGLE_STAR VALUES('태양');
INSERT INTO SINGLE_STAR VALUES('아이유');
INSERT INTO SINGLE_STAR VALUES('백지영');
INSERT INTO SINGLE_STAR VALUES('윤종신');
COMMIT;

SELECT * FROM GROUP_STAR
UNION
SELECT * FROM SINGLE_STAR;

SELECT * FROM GROUP_STAR
UNION ALL -- 중복해서 나옴
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

SELECT LENGTH('ORACLE'), LENGTH('오라클'), LENGTHB('ORACLE'), LENGTHB('오라클') FROM DUAL; --LENGTH: 한글 1글자 1바이트, LENGTHB: 한글 1글자 3바이트

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

SELECT TO_CHAR(SYSDATE -1, 'YYYY/MM/DD') 어제,
       TO_CHAR(SYSDATE, 'YYYY/MM/DD') 오늘,
       TO_CHAR(SYSDATE+1, 'YYYY/MM/DD') 내일
FROM DUAL;

SELECT TO_CHAR(HIREDATE, 'YYYYY/MM/DD') 입사일,
       TO_CHAR(TRUNC(HIREDATE, 'MONTH'), 'YYYY/MM/DD') 입사일
FROM EMP;

SELECT ENAME, SYSDATE 오늘, TO_CHAR(HIREDATE, 'YYYY/MM/DD') 입사일, TRUNC(MONTHS_BETWEEN(SYSDATE, HIREDATE)) 근무달수
FROM EMP;

SELECT TO_CHAR(NEXT_DAY(SYSDATE, '화요일'), 'YYYY/MM/DD') 화요일 FROM DUAL;

SELECT COMM, NVL(COMM, 20) FROM EMP;

SELECT ENAME, SAL, COMM, NVL2(COMM, SAL*12 + COMM, SAL*12) FROM EMP;

SELECT NULLIF('A','A'), NULLIF('A','B') FROM DUAL;

SELECT ENAME, SAL, COMM, COALESCE(COMM, SAL, 0) FROM EMP;

SELECT ENAME, DEPTNO, DECODE(DEPTNO, 10, '경리부', 20, '인사부') 
FROM EMP
WHERE DEPTNO IN (10,20);
 
SELECT ENAME, DEPTNO,
CASE WHEN DEPTNO = 10 THEN '경리부' 
WHEN DEPTNO = 20 THEN '인사부'
ELSE '전산부'
END
FROM EMP;

--1) 9월에 입사한 사원을 출력해 보세요 (SUBSTR)함수를 사용

SELECT * FROM EMP
WHERE SUBSTR(HIREDATE, 4, 2) = '09';

--2) 2003년도에 입사한 사원을 알아내기 위한 쿼리문

SELECT * FROM EMP
WHERE SUBSTR(HIREDATE, 1, 2) = '03';

--3) 다음은 이름이 '기'로 끝나는 사람

SELECT * FROM EMP
WHERE SUBSTR(ENAME, -1, 1) ='기';

--직급에 따라 급여를 인상하도록 합시다. 직급이 '부장'인 사원은 5%, '과장'인 사원은 10% 인상

SELECT JOB, SAL, DECODE(JOB, '부장', SAL+SAL*0.05, '과장', SAL+SAL*0.1)
FROM EMP
WHERE JOB IN ('부장','과장');

--입사일 연도는 2자리(YY), 월은 숫자(MON)으로 표시하고, 요일은 약어(DY)로 지정하여 출력

SELECT HIREDATE, TO_CHAR(HIREDATE, 'YY/MM/DD DY') 
FROM EMP;

SELECT MAX(SAL), MIN(SAL), SUM(SAL), ROUND(AVG(SAL)), COUNT(SAL) FROM EMP;

SELECT MAX(SAL), MIN(SAL), SUM(SAL), ROUND(AVG(SAL)), COUNT(SAL) 
FROM EMP
GROUP BY DEPTNO
ORDER BY DEPTNO;

--count(*)함수를 이용하여 담당 업무별 사원수를 출력

SELECT JOB, COUNT(*) FROM EMP
GROUP BY JOB;

--과장 수를 나열

SELECT COUNT(*)
FROM EMP
WHERE JOB='과장';

--급여 최고액, 급여 최저액의 차액

SELECT MAX(SAL)-MIN(SAL)
FROM EMP;

--직급별 사원의 최저 급여을 출력하시오. 최저 급여가 500미만인 그룹은 제외시키고, 결과를 급여에 대한 내림차순으로 정렬하여 출력

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

--각 부서에 대하 부서번호, 사원수, 부서내의 모든 사원 평균 급여를 출력하시오. 평균 급여는 소수점 둘째자리로 반올림

SELECT DEPTNO, COUNT(ENAME), ROUND(AVG(SAL),2)
FROM EMP
GROUP BY DEPTNO
ORDER BY DEPTNO;


--각 부서에 대해 부서번호 이름, 지역명, 사원수, 부서 내의 모든 사원의 평균 급여를 출력, 평균 급여는 정수로 소수점 둘째 자리로 반올림

SELECT DECODE(DEPTNO, 10, '경리부', 20, '인사부', 30, '영업부', 40, '전산부') AS 부서명, DECODE(DEPTNO, 10, '서울', 20, '인천', 30, '용인', 40, '수원') AS 지역명, COUNT(*) AS 사원수, ROUND(AVG(SAL), 0) AS 평균급여
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

--모든 테이블 보기
SELECT * FROM USER_TABLES;

SELECT TABLE_NAME, LOGGING FROM USER_TABLES;

--권한있는 사람을 알 수 있음
SELECT * FROM ALL_TABLES;

--DBA 테이블의 권한있는 사람을 알 수 있음
SELECT OWNER FROM DBA_TABLES;

CREATE TABLE DEPT01(DEPTNO NUMBER(2), DNAME VARCHAR2(14), LOC VARCHAR2(13));

INSERT INTO DEPT01 VALUES(10, '홍길동', '서울');

SELECT * FROM DEPT01;

INSERT INTO DEPT01(DNAME, DEPTNO, LOC) VALUES('홍길동', 10, '서울');

INSERT INTO DEPT01(DEPTNO) VALUES (20);

CREATE TABLE EMP02(EMPNO NUMBER(4), ENAME VARCHAR2(10), JOB VARCHAR2(10), HIREDATE DATE, DEPTNO NUMBER(2));

DESC EMP02;

INSERT INTO EMP02 VALUES(1001, '김사랑', '사원', '2023/06/13', 20);

SELECT * FROM EMP02;

INSERT INTO EMP02 VALUES(1002, '이사랑', '사원', TO_DATE('2002, 06, 01', 'YYYY, MM, DD'),20);

INSERT INTO EMP02 VALUES(1003, '박사랑', '사원', SYSDATE, 20);

UPDATE EMP02 SET JOB='사원' 
WHERE EMPNO=1003;

UPDATE EMP SET SAL = SAL+SAL*0.1 
WHERE DEPTNO=10;

SELECT * FROM EMP02;

DELETE FROM EMP02 WHERE ENAME='김사랑';


DELETE EMP02;

ROLLBACK;

DELETE FROM EMP02 WHERE EMPNO=1001;

INSERT INTO DEPT VALUES(60, 'TEST' ,'TEST');


DESC USER_CONSTRAINTS;

--사용자의 제약 조건의 컬럼들을 검색하기(딕셔너리)

SELECT * FROM USER_CONSTRAINTS;

DESC DEPT;

DESC EMP;

DROP TABLE EMP01;

CREATE TABLE EMP01(EMPNO NUMBER(4) NOT NULL, ENAME  VARCHAR2(10) NOT NULL, JOB VARCHAR2(9), DEPTNO NUMBER(2));

INSERT INTO EMP01 VALUES(1001, '이사랑', '사원',30);

CREATE TABLE EMP03(EMPNO NUMBER(4) UNIQUE, ENAME  VARCHAR2(10) NOT NULL, JOB VARCHAR2(9), DEPTNO NUMBER(2));

INSERT INTO EMP03 VALUES(1001, '이사랑','사원',30);

SELECT * FROM USER_CONSTRAINTS;

CREATE TABLE EMP04(EMPNO NUMBER(4) CONSTRAINT EMP04_EMPNO_UK UNIQUE, ENAME  VARCHAR2(10) NOT NULL, JOB VARCHAR2(9), DEPTNO NUMBER(2));

CREATE TABLE EMP05(EMPNO NUMBER(4) CONSTRAINT EMP05_EMPNO_PK PRIMARY KEY, ENAME VARCHAR2(10) CONSTRAINT EMP05_ENAME_NN NOT NULL, JOB VARCHAR2(9), DEPTNO NUMBER(2));

CREATE TABLE EMP06(EMPNO NUMBER(4) CONSTRAINT EMP06_EMPNO_PK PRIMARY KEY, ENAME VARCHAR2(10) CONSTRAINT EMP06_ENAME_NN NOT NULL, JOB VARCHAR2(9), DEPTNO NUMBER(2) CONSTRAINT EMP06_DEPTNO_FK REFERENCES DEPT(DEPTNO));

INSERT INTO EMP06 VALUES(1005, '이사랑', '사원', 20);

CREATE TABLE EMP07(EMPNO NUMBER(4) CONSTRAINT EMP07_EMPNO_PK PRIMARY KEY, ENAME VARCHAR2(10) CONSTRAINT EMP07_ENAME_NN NOT NULL, SAL NUMBER(7, 2) CONSTRAINT EMP07_SAL_CK CHECK(SAL BETWEEN 300 AND 2000), 
DEPTNO NUMBER(2) CONSTRAINT EMP_07_DEPTNO_FK REFERENCES DEPT(DEPTNO));

CREATE TABLE DEPT04(DEPTNO NUMBER(2) PRIMARY KEY, DNAME VARCHAR2(14), LOC VARCHAR2(13) DEFAULT '서울');

INSERT INTO DEPT04(DEPTNO) VALUES(10);

SELECT * FROM DEPT04;

CREATE TABLE MEMBER01(NAME VARCHAR2(10), ADDRESS VARCHAR2(30), HPPHONE VARCHAR2(16), CONSTRAINT MEMBER01_COMBO_PK PRIMARY KEY(NAME, HPPHONE));

SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME='MEMBER01';

DROP TABLE EMP01;

CREATE TABLE EMP01(EMPNO NUMBER(4), ENAME VARCHAR2(10) NOT NULL, JOB VARCHAR2(10), DEPTNO NUMBER(2));

ALTER TABLE EMP01 ADD CONSTRAINT EMP01_P PRIMARY KEY(EMPNO);

DESC EMP01;

--NOT NULL로 바꾸려면 ADD가 아니고 MODIFY해야함
ALTER TABLE EMP01 MODIFY JOB NOT NULL;

ALTER TABLE EMP01 DROP CONSTRAINT EMP01_P;

--제약조건의 비활성화
ALTER TABLE EMP DISABLE CONSTRAINT FK_DEPTNO;

--제약조건의 활성화
ALTER TABLE EMP ENABLE CONSTRAINT FK_DEPTNO;

SELECT * FROM DEPT, EMP;

--SELF JOIN
SELECT D1.DEPTNO, D2.DNAME FROM DEPT D1, DEPT D2;

--EQUI JOIN(SUBQUERY보다 JOIN이 성능이 더 좋으므로 JOIN 권장, EQUI JOIN, AINSI JOIN 권장, CROSS JOIN 비권장)
SELECT * FROM EMP, DEPT WHERE EMP.DEPTNO = DEPT.DEPTNO;

--CROSS JOIN
SELECT EMP.ENAME, DEPT.DNAME FROM EMP, DEPT WHERE EMP.DEPTNO = DEPT.DEPTNO AND ENAME='이문세';
SELECT E1.ENAME, D1.DNAME FROM EMP E1, DEPT D1 WHERE E1.DEPTNO = D1.DEPTNO AND ENAME='이문세';

SELECT * FROM SALGRADE;

--3개 JOIN
SELECT E.ENAME, D.DNAME, E.SAL, S.GRADE FROM EMP E, DEPT D, SALGRADE S WHERE E.DEPTNO= D.DEPTNO AND E.SAL*2 BETWEEN S.LOSAL AND S.HISAL;

--SELF JOIN
SELECT E1.ENAME 사원명, E2.ENAME 매니저명 FROM EMP E1, EMP E2 WHERE E1.MGR = E2.EMPNO AND E1.ENAME='이문세';

--ANSI JOIN - INNER JOIN
SELECT EMP.ENAME, DEPT.DNAME FROM EMP INNER JOIN DEPT ON EMP.DEPTNO = DEPT.DEPTNO;

--ANSI JOIN - LEFT OUTER JOIN
SELECT MEMBER.ENAME, MANAGER.ENAME FROM EMP MEMBER LEFT OUTER JOIN EMP MANAGER ON MEMBER.MGR = MANAGER.EMPNO;

--ANSI JOIN - RIGHT OUTER JOIN
SELECT MEMBER.ENAME, MANAGER.ENAME FROM EMP MEMBER RIGHT OUTER JOIN EMP MANAGER ON MEMBER.MGR = MANAGER.EMPNO;

--ANSI JOIN - FULL OUTER JOIN
SELECT MEMBER.ENAME, MANAGER.ENAME FROM EMP MEMBER FULL OUTER JOIN EMP MANAGER ON MEMBER.MGR = MANAGER.EMPNO;

-- 경리부에서 근무하는 사원의 이름과 입사일을 출력하기

SELECT E.ENAME, E.HIREDATE, D.DNAME FROM EMP E, DEPT D 
WHERE E.DEPTNO=D.DEPTNO AND D.DEPTNO=10;

-- ANSI JOIN을 사용하여 인천에서 근무하는 사원이름과 급여을 출력하기 V

SELECT E.ENAME, E.SAL 
FROM EMP E INNER JOIN DEPT D 
ON E.DEPTNO = D.DEPTNO AND D.LOC='인천';

-- 사원 테이블과 부서 테이블을 조인하여 사원이름과 부서번호, 부서명을 출력하시오 V

SELECT E.ENAME, D.DEPTNO, D.DNAME 
FROM EMP E LEFT OUTER JOIN DEPT D
ON E.DEPTNO = D.DEPTNO;

-- 직급이 과장인 사원이 이름, 부서명을 출력하시오

SELECT E1.ENAME, E1.JOB, E2.ENAME 
FROM EMP E1, EMP E2
WHERE E1.MGR = E2.EMPNO AND E2.ENAME = '감우성';

-- 직속상관이 감우성인 사원들의 이름과 직급을 출력하시오 V

?SELECT E2.ENAME, E1.JOB, E1.ENAME, D1.LOC 
FROM EMP E1, EMP E2, DEPT D1
WHERE E1.DEPTNO = D1.DEPTNO AND E1.ENAME = '감우성' AND E2.ENAME <> '감우성';

--SUBQUERY
SELECT DEPTNO FROM EMP 
WHERE ENAME='이문세';

SELECT DNAME 
FROM DEPT 
WHERE DEPTNO=(SELECT DEPTNO FROM EMP WHERE ENAME='이문세');

--사원들의 평균 급여보다 더 많은 급여를 받는 사원을 검색
SELECT * 
FROM EMP 
WHERE SAL >= (SELECT ROUND(AVG(SAL),2) FROM EMP);

--급여가 500만원을 초과하는 사원이 소속된 부서의 부서번호를 출력
SELECT DISTINCT DEPTNO
FROM EMP
WHERE SAL > 500;

--급여가 500만원을 초과하는 사원과 같은 부서에 근무하는 사원
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

--ALL: SUBQUERY 결과에 대해서 모두 참인 것
SELECT ENAME, SAL 
FROM EMP 
WHERE SAL > ALL(SELECT SAL FROM EMP WHERE DEPTNO=30);

--ANY: SUBQUERY가 하나만 참이어도 됨
SELECT ENAME, SAL FROM EMP WHERE SAL > ALL(SELECT MIN(SAL) FROM EMP WHERE DEPTNO = 30);
SELECT ENAME, SAL FROM EMP WHERE SAL > ANY(SELECT SAL FROM EMP WHERE DEPTNO = 30);

--EXISTS 연산자: 서브쿼리문에서 결과 값이 참이 나오기만 하면 바로 메인쿼리 결과값을 리턴함 최적화에 적합한 연산자임
SELECT * FROM DEPT WHERE EXISTS (SELECT * FROM EMP WHERE DEPTNO = 30);

SELECT * FROM DEPT WHERE EXISTS (SELECT * FROM EMP WHERE EMP.DEPTNO = DEPT.DEPTNO);

--1. 서브 쿼리를 이용하여 "영업부"에서 근무하는 모든 사원의 이름과 급여을 출력하라.

?SELECT DNAME, SAL
FROM EMP
WHERE DEPTNO = (SELECT DEPTNO FROM DEPT WHERE DNAME='영업부');

DROP TABLE EMP03;

--단, 제약조건은 복사되지 않음
CREATE TABLE EMP03 AS SELECT * FROM EMP;

CREATE TABLE EMP04 AS SELECT ENAME, SAL, JOB FROM EMP;

--테이블의 구조만 복사
CREATE TABLE EMP05 AS SELECT * FROM EMP WHERE DEPTNO=100;

--INSERT문 서브쿼리
DROP TABLE DEPT01;
CREATE TABLE DEPT01 AS SELECT FROM DEPT;

INSERT INTO DEPT01
SELECT * FROM DEPT;

--UPDATE문
UPDATE DEPT01 SET LOC = (SELECT LOC FROM DEPT WHERE DEPTNO = 40)
WHERE DEPTNO=20;


DROP TABLE EMP02;
CREATE TABLE EMP02 AS SELECT * FROM EMP;

--DELETE문
DELETE FROM EMP02 WHERE DEPTNO = (SELECT DEPTNO FROM DEPT WHERE DNAME = '영업부');

--VIEW 
DESC USER_VIEWS;

--자주 사용하는 긴 SELECT문을 VIEW로 만들어 둠
CREATE VIEW EMP_VIEW30 AS SELECT EMPNO, ENAME, DEPTNO FROM EMP WHERE DEPTNO=30;

INSERT INTO EMP_VIEW30 VALUES(1040, '홍길동', 20);

SELECT * FROM EMP_VIEW30;

SELECT * FROM EMP;



CREATE OR REPLACE VIEW VIEW_CHECK30
AS
SELECT * FROM EMP;

--뷰를 통해서 물리적 테이블을 바꿀 수 있음
UPDATE VIEW_CHECK30 SET DEPTNO=20 WHERE EMPNO=1002;

-- WHTH CHECK OPTION (조건 컬럼 값을 변경하지 못하게)
CREATE OR REPLACE VIEW VIEW_CHECK30
AS
SELECT * FROM EMP WHERE DEPTNO=30 WITH CHECK OPTION;

--뷰를 통해서 물리적 테이블을 바꿀 수 없음
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

--대입문으로 변수에 값을 지정하기
DECLARE
    VEMPNO NUMBER(4); --스칼라 변수
    VENAME VARCHAR2(10);
        VEMPNO1 EMP.EMPNO%TYPE; --레퍼런스 변수
    VENAME1 EMP.ENAME%TYPE;
BEGIN
    VEMPNO := 1001; 
    VENAME := '홍길동';
    VEMPNO := 2001;
    VENAME := '이순신';
    DBMS_OUTPUT.PUT_LINE(VEMPNO);
    DBMS_OUPUT.PUT_LINE(VENAME);
END;
/


DECLARE
        VEMPNO1 EMP.EMPNO%TYPE; --레퍼런스 변수
    VENAME1 EMP.ENAME%TYPE;
BEGIN
    SELECT EMPNO, ENAME INTO VEMPNO, VENAME
    FROM EMP
    WHERE ENAME='김사랑';
    DBMS_OUTPUT.PUT_LINE(VEMPNO || '' || VENAME);
END;
/


-- 부서번호로 부서명 알아내기
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
      vdname := '영업부';
   end if;
   if( vdeptno = 20) then
      vdname := '총무부';
   end if;
   if( vdeptno = 30) then
      vdname := '인사부';
   end if;
   if( vdeptno = 40) then
      vdname := '전산부';
   end if;
   dbms_output.put_line(  vempno || '  ' || vename || '  ' || vdeptno || '  ' || vdname );
end;
/

DECLARE
    VEMP EMP%TYPE; --레퍼런스 변수
    ANNSAL NUMBER(7,2);
BEGIN
    SELECT EMPNO, ENAME INTO VEMPNO, VENAME
    FROM EMP
    WHERE ENAME='김사랑';
    IF(VEMP.COMM IS NULL) THEN
    ANNSAL := VEMP.SAL*12;
    ELSE
    ANNSAL := VEMP.SAL*12+VEMP.COMM;
    END IF;
    DBMS_OUTPUT.PUT_LINE(VEMPNO.EMPNO || '' || VEMP.SAL || '' || ANNSAL);
END;
/

--반복문
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

-- 반복문
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
-- for문
declare
begin
  for n in 1..5 loop
     dbms_output.put_line( n );
  end loop;
end;
/
-- while loop문
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

EXECUTE DEL_ENAME('한예슬');

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

--커서
--BEGIN 안에 결과가 여러개 행이 나오면 반복문과 커서를 사용해야 함

SELECT * FROM DEPT;

CREATE OR REPLACE PROCEDURE CURSOR_SAMPLE01
IS
    VDEPT DEPT%ROWTYPE;
    CURSOR CL
    IS
    SELECT * FROM DEPTL
BEGIN
    DBMS_OUPUT.PUT_LINE('부서번호 부서명 지역명');
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
    DBMS_OUTPUT.PUT_LINE('신입사원이 입사했습니다');
END;
/

INSERT INTO EMP02 VALUES(1001, '김사랑','사원');

INSERT INTO EMP02 VALUES(1002, '한예슬','사원');

DROP TABLE SAL01;

CREATE TABLE SAL01
    (SALNO NUMBER(4) PRIMARY KEY, SAL NUMBER(7,2), EMPNO NUMBER(4) REFERENCES EMP02(EMPNO));
    
CREATE SEQUENCE SAL01_SALNO_SEQ;

-- 1단계 트리거 정의하기
CREATE OR REPLACE TRIGGER TRG_02
AFTER INSERT
ON EMP02
FOR EACH ROW -- 한 행씩 트리거 계속 발생
BEGIN
    INSERT INTO SAL01 VALUES(
    SAL01_SALNO_SEQ.NEXTAVL, 300, :NEW.EMPNO);   
END;
/

INSERT INTO EMP02 VALUES(1003, '홍길동','대리');

INSERT INTO EMP02 VALUES(1004, '이순신','사원');

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

-- 프로시저 : pl/sql문을 계속 사용하기 위해서 함수로 만든 것 return이 없다
-- 함수 : pl/sql문을 계속 사용하기 위해서 함수로 만든 것 return이 있다
-- 트리거 : 이벤트로 처리
-- 모든 사원을 삭제하는 프로시저 만들기
drop table emp01;
create table emp01
as
select * from emp;
select * from emp01;
-- 만들고 컴파일 실행기
-- 프로시저 만들기
create or replace procedure del_all
is
begin
   delete from emp01;
   commit;
end;
/
execute del_all; -- 실행하기
select * from emp01;
-- 저장 프로시저 조회하기 , 데이터 딕셔너리
select * from user_source;
-- 한예슬 레코드만 삭제하기
create or replace procedure
    del_ename(  vename   emp01.ename%type    )
is
begin
   delete from emp01 where ename like vename;
   commit;
end;
/
execute del_ename( '한예슬' );
select * from emp01;
execute del_ename( '오지호' );
--프로시저를 만들 때 [mode]  in, out, inout 매개변수
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
-- 바인드 변수 선언하기
variable var_name varchar2(15);
variable var_sal number;
variable var_job varchar2(9);
-- 프로시저를 실행하기
execute sel_empno( 1001, :var_name, :var_sal,  :var_job );
-- 바인드 변수값 출력하기
print var_name;
print var_sal;
print var_job;
-- 함수
-- 요구사항은 특별 보너스를 지급하는 저장함수 만들기
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
-- 함수를 실행하려면 바인드 변수 선언해주고
-- 실행한 것을 변수에 담는다
variable var_res number;
execute  :var_res := cal_bonus( 1003 );
print var_res;
select sal, cal_bonus( 1003 ), empno from emp where empno=1003;


정현희
  오후 2:56
-- 커서
-- begin안에 결과가 여러개 행이 나오면 반복문과 커서를 사용해야 한다.
-- 방법1)
-- 방법2)
-- 커서를 사용하여 부서 테이블의 모든 내용을 출력하는 저장 프로시저 만들기
select * from dept;
-- 방법1)
create or replace procedure cursor_sample01
is
    vdept dept%rowtype;
    cursor c1
    is
    select * from dept;
begin
    dbms_output.put_line('부서번호     부서명      지역명 ');
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
-- 방법2) for  레코드명 in 커서명 loop
--             문장들1
--             문장들2
--        end loop;
create or replace procedure cursor_sample02
is
    vdept dept%rowtype;
    cursor c1
    is
    select * from dept;
begin
    dbms_output.put_line('부서번호     부서명      지역명 ');
    dbms_output.put_line('-----------------------------');
    for   vdept  in  c1  loop
        exit when c1%notfound;
        dbms_output.put_line( vdept.deptno || '       ' || vdept.dname || '       ' || vdept.loc );
    end loop;
end;
/
execute cursor_sample02;
새 항목
2:56
-- 트리거
drop table emp02;
create table emp02(
    empno number(4) primary key,
    ename varchar2(20),
    job varchar2(20)
);
select * from emp02;
-- 삽입된 후 신입사원이 입사했습니다 출력되게
create or replace trigger trg_01
after insert
on emp02
begin
   dbms_output.put_line('신입사원이 입사했습니다');
end;
/
insert into emp02 values( 1001, '김사랑','사원');
insert into emp02 values( 1002, '한예슬','사원');
select * from emp02;
-- 급여 정보를 자동으로 추가하는 트리거 작성하기
drop table sal01;
create table sal01
  ( salno number(4) primary key,
    sal number(7,2),
    empno number(4) references emp02( empno ) );
-- 사원테이블에 신입사원 입력되면 급여테이블 자동으로 입력되기
-- 참고 자동으로 번호 붙이는 것  salno 자동 생성 시퀀스 만들기
create sequence sal01_salno_seq;
-- 1단계 트리거를 정의한다
create or replace trigger trg_02
 after  insert -- 삽입 후에
 on emp02  -- 적용 테이블
 for each row -- 한행씩 트리거 계속 발생
begin
  insert into sal01 values(  sal01_salno_seq.nextval, 300, :new.empno  );
end;
/
-- 실행은 emp02에다 삽입하기
insert into emp02 values ( 1003, '홍길동', '대리');
insert into emp02 values ( 1004, '이순신', '사원');
select * from emp02;
select * from sal01;
-- 급여 정보를 자동삭제하는 트리거 작성하기
delete from emp02 where empno=1003; -- 외래키 관계로 인하여 오류가 남
-- 트리거
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


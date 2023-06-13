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




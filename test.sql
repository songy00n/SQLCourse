create table tbl_vote_202005 (
    v_jumin char(13) not null primary key,
    v_name varchar2(20),
    m_no char(1),
    v_time char(4),
    v_area char(20),
    v_confirm char(1)
);
create table tbl_member_202005 (
m_no char(1) not null primary key,
m_name varchar2(20),
p_code char(2),
p_school char(1),
m_jumin char(13),
m_city varchar2(20)
);
create table tbl_party_202005 (
p_code char(2) not null primary key,
p_name varchar2(20),
p_indate date,
p_reader varchar2(20),
p_tel1 char(3),
p_tel2 char(4),
p_tel3 char(4)
);
insert into tbl_member_202005
values ('1', '김후보', 'P1', '1', '6603011999991', '수선화동');
select * from tbl_member_202005;
insert into tbl_member_202005
values ('2', '이후보', 'P2', '3', '5503011999992', '민들래동');
insert into tbl_member_202005
values ('3', '박후보', 'P3', '2', '7703011999993', '나팔꽃동');
insert into tbl_member_202005
values ('4', '조후보', 'P4', '2', '8803011999994', '진달래동');
insert into tbl_member_202005
values ('5', '최후보', 'P5', '3', '9903011999995', '개나리동');
insert into tbl_party_202005
values ('P1', 'A정당', DATE '2010-01-01', '위대표', '02', '1111', '0001');
insert into tbl_party_202005
values ('P2', 'B정당', DATE '2010-02-01', '명대표', '02', '1111', '0002');
insert into tbl_party_202005
values ('P3', 'C정당', DATE '2010-03-01', '기대표', '02', '1111', '0003');
insert into tbl_party_202005
values ('P4', 'D정당', DATE '2010-04-01', '옥대표', '02', '1111', '0004');
insert into tbl_party_202005
values ('P5', 'E정당', DATE '2010-05-01', '임대표', '02', '1111', '0005');
create table tbl_party_202005 (
p_code char(2) not null primary key,
p_name varchar2(20),
p_indate date,
p_reader varchar2(20),
p_tel1 char(3),
p_tel2 char(4),
p_tel3 char(4)
);
insert into tbl_vote_202005
values ('99010110001', '김유권', '1', '0930', '제1투표장', 'N');
insert into tbl_vote_202005
values ('89010120002', '이유권', '2', '0930', '제1투표장', 'N');
insert into tbl_vote_202005
values ('69010110003', '박유권', '3', '0930', '제1투표장', 'Y');
insert into tbl_vote_202005
values ('59010120004', '홍유권', '4', '0930', '제1투표장', 'Y');
insert into tbl_vote_202005
values ('79010110005', '조유권', '5', '0930', '제1투표장', 'Y');
insert into tbl_vote_202005
values ('89010120006', '최유권', '1', '0930', '제1투표장', 'Y');
insert into tbl_vote_202005
values ('59010110007', '지유권', '1', '0930', '제1투표장', 'Y');
insert into tbl_vote_202005
values ('49010120008', '장유권', '3', '0930', '제1투표장', 'Y');
insert into tbl_vote_202005
values ('79010110009', '정유권', '3', '0930', '제1투표장', 'Y');
insert into tbl_vote_202005
values ('89010120010', '강유권', '4', '0930', '제1투표장', 'Y');
insert into tbl_vote_202005
values ('99010110011', '신유권', '5', '0930', '제1투표장', 'Y');
insert into tbl_vote_202005
values ('79010120012', '오유권', '1', '1330', '제1투표장', 'Y');
insert into tbl_vote_202005
values ('69010110013', '현유권', '4', '1330', '제2투표장', 'Y');
insert into tbl_vote_202005
values ('89010110014', '왕유권', '2', '1330', '제2투표장', 'Y');
insert into tbl_vote_202005
values ('99010110015', '유유권', '3', '1330', '제2투표장', 'Y');
insert into tbl_vote_202005
values ('79010110016', '한유권', '2', '1330', '제2투표장', 'Y');
insert into tbl_vote_202005
values ('89010110017', '문유권', '4', '1330', '제2투표장', 'Y');
insert into tbl_vote_202005
values ('99010110018', '양유권', '2', '1330', '제2투표장', 'Y');
insert into tbl_vote_202005
values ('99010110019', '구유권', '4', '1330', '제2투표장', 'Y');
insert into tbl_vote_202005
values ('79010110020', '황유권', '5', '1330', '제2투표장', 'Y');
insert into tbl_vote_202005
values ('69010110021', '배유권', '3', '1330', '제2투표장', 'Y');
insert into tbl_vote_202005
values ('79010110022', '전유권', '3', '1330', '제2투표장', 'Y');
insert into tbl_vote_202005
values ('99010110023', '고유권', '1', '1330', '제2투표장', 'Y');
insert into tbl_vote_202005
values ('59010110024', '권유권', '3', '1330', '제2투표장', 'Y');
select * from tbl_vote_202005;
select * from tbl_party_202005;
select * from tbl_member_202005 M, tbl_party_202005 P
    where M.p_code=P.p_code;
	
select M.m_no, M.m_name, P.p_name,
       decode(M.p_school,'1','고졸','2','학사','3','석사','박사') p_school,
       substr(M.m_jumin,1,6)||'-'||substr(M.m_jumin,7) m_jumin,
       M.m_city,
       substr(P.p_tel1,1,2)||'-'||P.p_tel2||'-'||(substr(P.p_tel3,4)||substr(P.p_tel3,4)||substr(P.p_tel3,4)||substr(P.p_tel3,4)) p_tel
from tbl_member_202005 M, tbl_party_202005 P
where M.p_code = P.p_code;
SELECT v_name,
	   '19'||substr(v_jumin,1,2)||'년'||substr(v_jumin,3,2)||
	        '월'||substr(v_jumin,5,2)||'일생' v_jumin,
	       '만 '||(to_number(to_char(sysdate,'yyyy'))
	       - to_number('19'||substr(v_jumin,1,2)))||'세' v_age,
	        DECODE(substr(v_jumin,7,1),'1','남','여') v_gender,		  
	        m_no,
	        substr(v_time,1,2)||':'||substr(v_time,3,2) v_time,
	        DECODE(v_confirm,'Y','확인','미확인') v_confirm
 FROM tbl_vote_202005
 WHERE v_area='제1투표장';
 
 commit;
 
 create user tester1 identified by 1234;
grant connect, resource to tester1;

 commit;
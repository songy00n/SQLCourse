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
values ('1', '���ĺ�', 'P1', '1', '6603011999991', '����ȭ��');
select * from tbl_member_202005;
insert into tbl_member_202005
values ('2', '���ĺ�', 'P2', '3', '5503011999992', '�ε鷡��');
insert into tbl_member_202005
values ('3', '���ĺ�', 'P3', '2', '7703011999993', '���Ȳɵ�');
insert into tbl_member_202005
values ('4', '���ĺ�', 'P4', '2', '8803011999994', '���޷���');
insert into tbl_member_202005
values ('5', '���ĺ�', 'P5', '3', '9903011999995', '��������');
insert into tbl_party_202005
values ('P1', 'A����', DATE '2010-01-01', '����ǥ', '02', '1111', '0001');
insert into tbl_party_202005
values ('P2', 'B����', DATE '2010-02-01', '���ǥ', '02', '1111', '0002');
insert into tbl_party_202005
values ('P3', 'C����', DATE '2010-03-01', '���ǥ', '02', '1111', '0003');
insert into tbl_party_202005
values ('P4', 'D����', DATE '2010-04-01', '����ǥ', '02', '1111', '0004');
insert into tbl_party_202005
values ('P5', 'E����', DATE '2010-05-01', '�Ӵ�ǥ', '02', '1111', '0005');
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
values ('99010110001', '������', '1', '0930', '��1��ǥ��', 'N');
insert into tbl_vote_202005
values ('89010120002', '������', '2', '0930', '��1��ǥ��', 'N');
insert into tbl_vote_202005
values ('69010110003', '������', '3', '0930', '��1��ǥ��', 'Y');
insert into tbl_vote_202005
values ('59010120004', 'ȫ����', '4', '0930', '��1��ǥ��', 'Y');
insert into tbl_vote_202005
values ('79010110005', '������', '5', '0930', '��1��ǥ��', 'Y');
insert into tbl_vote_202005
values ('89010120006', '������', '1', '0930', '��1��ǥ��', 'Y');
insert into tbl_vote_202005
values ('59010110007', '������', '1', '0930', '��1��ǥ��', 'Y');
insert into tbl_vote_202005
values ('49010120008', '������', '3', '0930', '��1��ǥ��', 'Y');
insert into tbl_vote_202005
values ('79010110009', '������', '3', '0930', '��1��ǥ��', 'Y');
insert into tbl_vote_202005
values ('89010120010', '������', '4', '0930', '��1��ǥ��', 'Y');
insert into tbl_vote_202005
values ('99010110011', '������', '5', '0930', '��1��ǥ��', 'Y');
insert into tbl_vote_202005
values ('79010120012', '������', '1', '1330', '��1��ǥ��', 'Y');
insert into tbl_vote_202005
values ('69010110013', '������', '4', '1330', '��2��ǥ��', 'Y');
insert into tbl_vote_202005
values ('89010110014', '������', '2', '1330', '��2��ǥ��', 'Y');
insert into tbl_vote_202005
values ('99010110015', '������', '3', '1330', '��2��ǥ��', 'Y');
insert into tbl_vote_202005
values ('79010110016', '������', '2', '1330', '��2��ǥ��', 'Y');
insert into tbl_vote_202005
values ('89010110017', '������', '4', '1330', '��2��ǥ��', 'Y');
insert into tbl_vote_202005
values ('99010110018', '������', '2', '1330', '��2��ǥ��', 'Y');
insert into tbl_vote_202005
values ('99010110019', '������', '4', '1330', '��2��ǥ��', 'Y');
insert into tbl_vote_202005
values ('79010110020', 'Ȳ����', '5', '1330', '��2��ǥ��', 'Y');
insert into tbl_vote_202005
values ('69010110021', '������', '3', '1330', '��2��ǥ��', 'Y');
insert into tbl_vote_202005
values ('79010110022', '������', '3', '1330', '��2��ǥ��', 'Y');
insert into tbl_vote_202005
values ('99010110023', '������', '1', '1330', '��2��ǥ��', 'Y');
insert into tbl_vote_202005
values ('59010110024', '������', '3', '1330', '��2��ǥ��', 'Y');
select * from tbl_vote_202005;
select * from tbl_party_202005;
select * from tbl_member_202005 M, tbl_party_202005 P
    where M.p_code=P.p_code;
	
select M.m_no, M.m_name, P.p_name,
       decode(M.p_school,'1','����','2','�л�','3','����','�ڻ�') p_school,
       substr(M.m_jumin,1,6)||'-'||substr(M.m_jumin,7) m_jumin,
       M.m_city,
       substr(P.p_tel1,1,2)||'-'||P.p_tel2||'-'||(substr(P.p_tel3,4)||substr(P.p_tel3,4)||substr(P.p_tel3,4)||substr(P.p_tel3,4)) p_tel
from tbl_member_202005 M, tbl_party_202005 P
where M.p_code = P.p_code;
SELECT v_name,
	   '19'||substr(v_jumin,1,2)||'��'||substr(v_jumin,3,2)||
	        '��'||substr(v_jumin,5,2)||'�ϻ�' v_jumin,
	       '�� '||(to_number(to_char(sysdate,'yyyy'))
	       - to_number('19'||substr(v_jumin,1,2)))||'��' v_age,
	        DECODE(substr(v_jumin,7,1),'1','��','��') v_gender,		  
	        m_no,
	        substr(v_time,1,2)||':'||substr(v_time,3,2) v_time,
	        DECODE(v_confirm,'Y','Ȯ��','��Ȯ��') v_confirm
 FROM tbl_vote_202005
 WHERE v_area='��1��ǥ��';
 
 commit;
 
 create user tester1 identified by 1234;
grant connect, resource to tester1;

 commit;
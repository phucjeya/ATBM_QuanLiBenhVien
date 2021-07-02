--SELECT STATUS FROM DBA_OLS_STATUS WHERE NAME = 'OLS_CONFIGURE_STATUS';
--SELECT VALUE FROM V$OPTION WHERE PARAMETER = 'Oracle Label Security';
ALTER USER LBACSYS ACCOUNT UNLOCK IDENTIFIED BY 123;
EXEC LBACSYS.CONFIGURE_OLS; -- This procedure registers Oracle Label Security.
EXEC LBACSYS.OLS_ENFORCEMENT.ENABLE_OLS;
select status from v$instance;
ALTER DATABASE OPEN;
begin
    EXECUTE IMMEDIATE 'DROP USER BENHVIEN CASCADE';
    EXCEPTION WHEN OTHERS THEN NULL;
end;
/

--conn sys/123 as sysdba 
--Tao user BENHVIEN chua cac table
alter session set "_oracle_script" =true;
CREATE USER BENHVIEN IDENTIFIED BY 123;
grant create session to BENHVIEN;
grant all privileges to BENHVIEN;
--Du lieu
--insert into HOADON(mahoadon,thoigianlap,tongtien,loaihoadon,malichsu,manv) values('HDCNA123',TO_DATE('01-JUL-2021', 'DD-MON-YYYY'),100000,'DICHVU',null,null);
--insert into HOADON(mahoadon,thoigianlap,tongtien,loaihoadon,malichsu,manv) values('HDCNA124',TO_DATE('01-JUL-2021', 'DD-MON-YYYY'),20000,'DICHVU',null,null);
--insert into HOADON(mahoadon,thoigianlap,tongtien,loaihoadon,malichsu,manv) values('HDCNB125',TO_DATE('01-JUN-2021', 'DD-MON-YYYY'),380000,'DICHVU',null,null);
--insert into HOADON(mahoadon,thoigianlap,tongtien,loaihoadon,malichsu,manv) values('HDCNB126',TO_DATE('01-SEP-2021', 'DD-MON-YYYY'),78000,'DICHVU',null,null);

--Tao user thuc hien va quan li OLS
--Tao ra user BENHVIEN_mgr
alter session set "_oracle_script" =true;
CREATE USER BENHVIEN_mgr IDENTIFIED BY 123;
grant create session to BENHVIEN_mgr;
grant create user to BENHVIEN_mgr;


--conn lbacsys/123;
begin SA_SYSDBA.CREATE_POLICY(
    policy_name => 'OLS_POLICY',
    column_name => 'COLUMN_OLS'
);
end;
--Cap role OLS_policy_dba(duoc tao ra khi tao ols_policy) cho BenhVien_mgr
--Conn sys/123
grant OLS_POLICY_dba to BENHVIEN_mgr;

-- cap quyen quan ly OLS cho user 
GRANT EXECUTE ON sa_components TO BENHVIEN_mgr;
GRANT EXECUTE ON sa_label_admin TO BENHVIEN_mgr;
GRANT EXECUTE ON sa_user_admin TO BENHVIEN_mgr;
GRANT EXECUTE ON char_to_label TO BENHVIEN_mgr;
GRANT EXECUTE ON SA_POLICY_ADMIN TO BENHVIEN_mgr;
GRANT connect, create user, drop user,create role, drop any role TO BENHVIEN_mgr;
GRANT SELECT, INSERT, UPDATE ON BENHVIEN.HOADON TO BENHVIEN_mgr;
grant alter on BENHVIEN.hoadon to BENHVIEN_mgr;
grant all on dba_sa_groups to BENHVIEN_mgr;
grant all on dba_sa_compartments to BENHVIEN_mgr;
grant all on dba_sa_levels to BENHVIEN_mgr;
grant all on dba_sa_labels to BENHVIEN_mgr;
grant all on dba_sa_policies to BENHVIEN_mgr;

--Tao level,compart,level
--conn BENHVIEN_mgr/123
--Create level
begin SA_COMPONENTS.CREATE_LEVEL(
policy_name => 'OLS_POLICY',
level_num   => 9000,
short_name => 'EXEC',
long_name   => 'Giam Doc'
);

SA_COMPONENTS.CREATE_LEVEL(
policy_name => 'OLS_POLICY',
level_num   => 8000,
short_name => 'MGR',
long_name   => 'Quan Ly'
);

SA_COMPONENTS.CREATE_LEVEL(
policy_name => 'OLS_POLICY',
level_num   => 7000,
short_name => 'EMP',
long_name   => 'Nhan Vien'
);
end;
/

--Create Group
begin    
    sa_components.CREATE_GROUP(
    policy_name => 'OLS_POLICY',
    long_name => 'Chi Nhanh A',
    short_name => 'CNA',
    group_num => 100
    );
    sa_components.CREATE_GROUP(
    policy_name => 'OLS_POLICY',
    long_name => 'Chi Nhanh B',
    short_name => 'CNB',
    group_num => 110
    );
end;
/
--select*from dba_sa_groups;
--Create compartment
begin

sa_components.create_compartment
(policy_name => 'OLS_POLICY',
long_name => 'Tiep Tan Dieu Phoi',
short_name => 'TTDP',
comp_num => 700);
sa_components.create_compartment
(policy_name => 'OLS_POLICY',
long_name => 'Phong Tai Vu',
short_name => 'PTV',
comp_num => 600);
sa_components.create_compartment
(policy_name => 'OLS_POLICY',
long_name => 'Nhom Bac Si',
short_name => 'NBS',
comp_num => 500);

sa_components.create_compartment
(policy_name => 'OLS_POLICY',
long_name => 'Bo Phan Ban Thuoc',
short_name => 'BPBT',
comp_num => 400);

sa_components.create_compartment
(policy_name => 'OLS_POLICY',
long_name => 'Bo Phan Ke Toan',
short_name => 'BPKT',
comp_num => 300);

end;
/
--select*from dba_sa_compartments;
BEGIN
SA_LABEL_ADMIN.CREATE_LABEL(
    policy_name => 'OLS_POLICY',
    label_tag   => '30000',
    label_value => 'EXEC:PTV,BPBT:CNA,CNB',
    data_label  => TRUE);

SA_LABEL_ADMIN.CREATE_LABEL(
    policy_name => 'OLS_POLICY',
    label_tag   => 21060,
    label_value => 'MGR:PTV,BPBT:CNA',
    data_label  => TRUE);

SA_LABEL_ADMIN.CREATE_LABEL(
    policy_name => 'OLS_POLICY',
    label_tag   => '21160',
    label_value => 'MGR:PTV,BPBT:CNB',
    data_label  => TRUE);
    
SA_LABEL_ADMIN.CREATE_LABEL(
    policy_name => 'OLS_POLICY',
    label_tag   => '11060',
    label_value => 'EMP:PTV:CNA',
    data_label  => TRUE);
SA_LABEL_ADMIN.CREATE_LABEL(
    policy_name => 'OLS_POLICY',
    label_tag   => '11160',
    label_value => 'EMP:PTV:CNB',
    data_label  => TRUE);
 
 SA_LABEL_ADMIN.CREATE_LABEL(
    policy_name => 'OLS_POLICY',
    label_tag   => '11260',
    label_value => 'EMP:BPBT:CNA',
    data_label  => TRUE);

     SA_LABEL_ADMIN.CREATE_LABEL(
    policy_name => 'OLS_POLICY',
    label_tag   => '11360',
    label_value => 'EMP:BPBT:CNB',
    data_label  => TRUE);
    
 END;
 /
 
--select* from dba_sa_labels;
BEGIN
 SA_POLICY_ADMIN.APPLY_TABLE_POLICY 
('OLS_POLICY', 
'BENHVIEN', 
'HOADON', 
'NO_CONTROL');
END;


Update BENHVIEN.HOADON
SET COLUMN_OLS = CHAR_TO_LABEL ('OLS_POLICY', 'EMP:BPBT:CNA')
where hoadon.mahoadon like'HDCNA%' and manv like 'NVBT%';
Update BENHVIEN.HOADON
SET COLUMN_OLS = CHAR_TO_LABEL ('OLS_POLICY', 'EMP:BPBT:CNB')
where hoadon.mahoadon like'HDCNB%' and manv like 'NVBT%'; 
Update BENHVIEN.HOADON
SET COLUMN_OLS = CHAR_TO_LABEL ('OLS_POLICY', 'EMP:PTV:CNA')
where hoadon.mahoadon like'HDCNB%' and manv like 'NVTV%'; 
Update BENHVIEN.HOADON
SET COLUMN_OLS = CHAR_TO_LABEL ('OLS_POLICY', 'EMP:PTV:CNB')
where hoadon.mahoadon like'HDCNB%' and manv like 'NVTV%'; 

--Tao user
--conn sys/123 
create user EXEC1 identified by 123;
grant create session to EXEC1;
create user MGR1 identified by 123;--Quan li CNA
grant create session to MGR1;
create user MGR2 identified by 123;--QUan Li CNB
grant create session to MGR2;
create user EMPTV1 identified by 123;--Nhan Vien  PTV CNA 
grant create session to EMPTV1;
create user EMPTV2 identified by 123;--Nhan Vien  PTV CNB
grant create session to EMPTV2;
create user EMPBT1 identified by 123;--Nhan Vien  BT CNA 
grant create session to EMPBT1;
grant select on BENHVIEN.HOADON to EXEC1;
grant select on BENHVIEN.HOADON to MGR1;
grant select on BENHVIEN.HOADON to MGR2;
grant select on BENHVIEN.HOADON to EMPTV1;
grant select on BENHVIEN.HOADON to EMPTV2;
grant select on BENHVIEN.HOADON to EMPBT1;





BEGIN
sa_policy_admin.remove_table_policy
(policy_name =>'OLS_POLICY',
schema_name => 'BENHVIEN',
table_name => 'HOADON');

sa_policy_admin.apply_table_policy
(policy_name =>'OLS_POLICY',
schema_name => 'BENHVIEN',
table_name => 'HOADON',
table_options => 'READ_CONTROL,WRITE_CONTROL');
END;
/
--Gan nhan vao user
--EXEC
BEGIN
    SA_USER_ADMIN.SET_USER_LABELS (
    policy_name       => 'OLS_POLICY',
    user_name         => 'EXEC1',
    max_read_label    => 'EXEC:PTV,BPBT:CNA,CNB',
    max_write_label   => 'EXEC:PTV,BPBT:CNA,CNB',
    def_label         => 'EXEC:PTV,BPBT:CNA,CNB',
    row_label         => 'EXEC:PTV,BPBT:CNA,CNB');
end;
--MGR1 chi nhanh A
Begin
SA_USER_ADMIN.SET_LEVELS ('OLS_POLICY', 
    'MGR1', 
    'MGR', 
    'EMP', 
    'MGR', 
    'MGR');

 sa_user_admin.set_compartments
 (policy_name => 'OLS_POLICY',
 user_name => 'MGR1',
 read_comps => 'PTV,BPBT',
 write_comps => 'PTV,BPBT',
 def_comps => 'PTV,BPBT',
 row_comps => 'PTV,BPBT');
 
 sa_user_admin.set_groups
(policy_name =>'OLS_POLICY',
user_name =>'MGR1',
read_groups=> 'CNA',
write_groups=> 'CNA',
def_groups => 'CNA',
row_groups => 'CNA');
 END;
/
--Gan nhan cho MGR2
Begin
SA_USER_ADMIN.SET_LEVELS ('OLS_POLICY', 
    'MGR2', 
    'MGR', 
    'EMP', 
    'MGR', 
    'MGR');

 sa_user_admin.set_compartments
 (policy_name => 'OLS_POLICY',
 user_name => 'MGR2',
 read_comps => 'PTV,BPBT',
 write_comps => 'PTV,BPBT',
 def_comps => 'PTV,BPBT',
 row_comps => 'PTV,BPBT');
 
 sa_user_admin.set_groups
(policy_name =>'OLS_POLICY',
user_name =>'MGR2',
read_groups=> 'CNB',
write_groups=> 'CNB',
def_groups => 'CNB',
row_groups => 'CNB');
 END;
/

--Ban THuoc chi nhanh A
Begin
SA_USER_ADMIN.SET_LEVELS ('OLS_POLICY', 
    'EMPBT1', 
    'EMP', 
    'EMP', 
    'EMP', 
    'EMP');

 sa_user_admin.set_compartments
 (policy_name => 'OLS_POLICY',
 user_name => 'EMPBT1',
 read_comps => 'BPBT',
 write_comps => 'BPBT',
 def_comps => 'BPBT',
 row_comps => 'BPBT');
 
 sa_user_admin.set_groups
(policy_name =>'OLS_POLICY',
user_name =>'EMPBT1',
read_groups=> 'CNA',
write_groups=> 'CNA',
def_groups => 'CNA',
row_groups => 'CNA');
 END;
/

--Ban THuoc chi nhanh B
Begin
SA_USER_ADMIN.SET_LEVELS ('OLS_POLICY', 
    'EMPBT2', 
    'EMP', 
    'EMP', 
    'EMP', 
    'EMP');

 sa_user_admin.set_compartments
 (policy_name => 'OLS_POLICY',
 user_name => 'EMPBT2',
 read_comps => 'BPBT',
 write_comps => 'BPBT',
 def_comps => 'BPBT',
 row_comps => 'BPBT');
 
 sa_user_admin.set_groups
(policy_name =>'OLS_POLICY',
user_name =>'EMPBT2',
read_groups=> 'CNB',
write_groups=> 'CNB',
def_groups => 'CNB',
row_groups => 'CNB');
 END;
/
--EMPTV1 chi nhanh A
Begin
SA_USER_ADMIN.SET_LEVELS ('OLS_POLICY', 
    'EMPTV1', 
    'EMP', 
    'EMP', 
    'EMP', 
    'EMP');

 sa_user_admin.set_compartments
 (policy_name => 'OLS_POLICY',
 user_name => 'EMPTV1',
 read_comps => 'PTV',
 write_comps => 'PTV',
 def_comps => 'PTV',
 row_comps => 'PTV');
 
 sa_user_admin.set_groups
(policy_name =>'OLS_POLICY',
user_name =>'EMPTV1',
read_groups=> 'CNA',
write_groups=> 'CNA',
def_groups => 'CNA',
row_groups => 'CNA');
 END;
/
--EMPTV CNB 
Begin
SA_USER_ADMIN.SET_LEVELS ('OLS_POLICY', 
    'EMPTV2', 
    'EMP', 
    'EMP', 
    'EMP', 
    'EMP');

 sa_user_admin.set_compartments
 (policy_name => 'OLS_POLICY',
 user_name => 'EMPTV2',
 read_comps => 'PTV',
 write_comps => 'PTV',
 def_comps => 'PTV',
 row_comps => 'PTV');
 
 sa_user_admin.set_groups
(policy_name =>'OLS_POLICY',
user_name =>'EMPTV2',
read_groups=> 'CNB',
write_groups=> 'CNB',
def_groups => 'CNB',
row_groups => 'CNB');
 END;
/
--Conn MGR1/123
--select* from BENHVIEN.HOADON;
--Conn MGR2/123
--select* from BENHVIEN.HOADON;




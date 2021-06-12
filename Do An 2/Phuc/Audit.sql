--Th?c hi?n enable audit,disable audit tren sqlplus trong oracle.
--enable audit 
alter system set audit_trail=db ,extended scope=spfile;-- enable audit
shutdown immediate;
startup
--Disable audit
alter system set audit_trail=none scope=spfile ; --disable audit
shutdown immediate;
startup

--Tao user de test
--alter session set "_oracle_script" =true;
--create USER BVaudit IDENTIFIED BY "123";
--grant create session to BVaudit;
--Audit
audit select,insert,update, delete on HOADON by access;
--Audit
audit select,insert,update, delete on BENHNHAN by access;

--FGA Lieu Luong cua CT_DonThuoc
BEGIN
  DBMS_FGA.ADD_POLICY(
   object_schema      => 'BVaudit',
   object_name        => 'CT_DONTHUOC',
   policy_name        => 'Track_LieuLuong_CT_DonThuoc',
   enable             =>  TRUE,
   statement_types    => 'INSERT, UPDATE, DELETE',
   audit_column       => 'LIEULUONG',
   audit_trail        =>  DBMS_FGA.DB + DBMS_FGA.EXTENDED);
END;
--FGA tren Gia cua bang Thuoc
BEGIN
  DBMS_FGA.ADD_POLICY(
   object_schema      => 'BVaudit',
   object_name        => 'THUOC',
   policy_name        => 'Track_Gia_Thuoc',
   enable             =>  TRUE,
   statement_types    => 'SELECT,INSERT, UPDATE, DELETE',
   audit_column       => 'GIA',
   audit_trail        =>  DBMS_FGA.DB + DBMS_FGA.EXTENDED);
END;
--Kiem tra audit trail cua fga
--select OS_USER,USERHOST,OBJECT_NAME,SQL_TEXT,EXTENDED_TIMESTAMP from dba_fga_audit_trail ;

---Giam sat truy van thanh cong:
audit insert,update,delete on DONTHUOC by access WHENEVER SUCCESSFUL;

---Giam sat truy van khi co loi:
audit insert,update on ChamCong by access WHENEVER NOT SUCCESSFUL;
--Kiem tra du lieu audit cua he thong
SELECT username,OS_USERNAME,USERHOST,extended_timestamp,obj_name,action_name FROM dba_audit_trail ;

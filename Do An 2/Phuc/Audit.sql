--enable audit 
alter system set audit_trail=db ,extended scope=spfile;-- enable audit
shutdown immediate;
startup
--Disable audit
alter system set audit_trail=none scope=spfile ; --disable audit
shutdown immediate;
startup

--Audit
audit select,insert,update, delete on HOADON by access;
--Audit
audit select,insert,update, delete on BENHNHAN by access;

--FGA
select * from DBA_AUDIT_POLICIES;
---Giam sat truy van thanh cong:
audit insert,update,delete on DONTHUOC by access WHENEVER SUCCESSFUL;

---Giam sat truy van khi co loi:
audit insert,update on ChamCong by access WHENEVER NOT SUCCESSFUL;
--Kiem tra du lieu audit cua he thong
SELECT username,OS_USERNAME,USERHOST,extended_timestamp,obj_name,action_name FROM dba_audit_trail ;
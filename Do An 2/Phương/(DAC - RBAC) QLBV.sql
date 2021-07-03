ALTER SESSION SET "_ORACLE_SCRIPT"= TRUE;
--Proc DAC - RBAC la tu phan he 1. Nhung doi ten theo dung ngu canh va thu tu tham so.
--Khong duoc truyen tham so co dau space, hay co ki tu unicode

create or replace procedure Create_User(User_name in varchar2,Pass_Word in varchar2)
authid current_user 
is
Tmp_count int;
Tmp_query varchar2(100);
Begin
Tmp_query:='alter session set "_ORACLE_SCRIPT"=true';
execute immediate(Tmp_query);
select count(*) into Tmp_count from all_users where username=User_name;
if(Tmp_count!=0)
then 
RAISE_APPLICATION_ERROR(-20000,'User da ton tai');
end if;
Tmp_query:='Create user '|| User_name||' identified by '||Pass_Word;
execute immediate(Tmp_query);
Tmp_query:='grant create session to '|| User_name;
execute immediate(Tmp_query);
End;

create or replace procedure Drop_User(User_Name in varchar2)
authid current_user is
Tmp_query varchar(100);
Tmp_count varchar(100);
Begin

select count(*) into Tmp_count from all_users where username=User_name;
if(Tmp_count!=0) then
Tmp_query:='Drop user '||User_Name; 
execute IMMEDIATE (Tmp_query);
else 
RAISE_APPLICATION_ERROR(-20000,'User chua ton tai');
end if;
End;

create or replace procedure Create_Role_withPass(Role_Name in varchar2,Pass_Word in varchar2)
authid current_user is
Tmp_query varchar(100);
Begin

if(Pass_Word=' ') 
 then Tmp_query:='Create role '|| Role_Name;
elsif(pass_word!=' ') then 
Tmp_query:='Create role '|| Role_Name||' identified by '||Pass_Word;
End if;
execute IMMEDIATE (Tmp_query);
exception
when others then
RAISE_APPLICATION_ERROR(-20000,'Role da ton tai');
End;

create or replace procedure Create_Role(Role_Name in varchar2)
authid current_user is
Tmp_query varchar(100);
Begin
Tmp_query:='Create role '|| Role_Name;
execute IMMEDIATE (Tmp_query);
exception
when others then
RAISE_APPLICATION_ERROR(-20000,'Role da ton tai');
End;

create or replace procedure Drop_Role(Role_Name in varchar2)
authid current_user is
Tmp_query varchar(100);
Tmp_name varchar(100);
Begin
Tmp_query:='Drop role '||Role_Name; 
execute IMMEDIATE (Tmp_query);
exception
when others then
RAISE_APPLICATION_ERROR(-20000,'Role chua ton tai');
End;

create or replace procedure Grant_Object_Privs_toUser(User_Name in varchar2, Privs_name in varchar2,Object_Name in varchar2,grant_option int )
authid current_user 
is
Tmp_count int;
Tmp_Query varchar2(100);
begin 
select count(*) into Tmp_count from all_users where username=User_name;
if(Tmp_count!=0) then
    if(grant_option=0) then
    Tmp_Query:='Grant '||Privs_name|| ' on ' ||Object_Name ||' to ' ||User_Name;
    execute immediate (Tmp_query);

    elsif(grant_option=1) then
    Tmp_Query:='Grant '||Privs_name|| ' on ' ||Object_Name ||' to ' ||User_Name||' With grant option' ;
    end if;
execute immediate (Tmp_query);
else 
RAISE_APPLICATION_ERROR(-20000,'User chua ton tai');
end if;
end;

create or replace procedure Revoke_Object_Privs_fromUser(User_Name in varchar2, priv in varchar2, a_object in varchar2)
authid current_user is
Tmp_query varchar(100);
Tmp_count int;
exception_username exception;
Begin

select count(*) into Tmp_count from all_users where UserName=User_Name;
if(Tmp_count != 0) then
Tmp_query:='REVOKE '||priv||' ON ' ||a_object||' FROM ' ||User_name;
execute IMMEDIATE (Tmp_query);
elsif(Tmp_count=0) then
raise exception_username;
end if;

Exception 
when exception_username then 
RAISE_APPLICATION_ERROR(-20000,'User chua ton tai');
WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
End;

create or replace procedure Grant_Object_Privs_toRole(Role_Name in varchar2, Privs_name in varchar2,Object_Name in varchar2)
authid current_user 
is
Tmp_count int;
Tmp_Query varchar2(100);
begin 
Tmp_Query:='Grant '||Privs_name||' on '||Object_Name||' to ' ||Role_Name;
execute immediate (Tmp_query);
EXCEPTION
when others then
RAISE_APPLICATION_ERROR(-20000,'Role chua ton tai');
end;

create or replace procedure Revoke_Object_Privs_fromRole(a_role in varchar2, a_priv in varchar2, a_object in varchar2)
authid current_user is
Tmp_query varchar(100);
Tmp_count int;
Tmp_count2 int;
exception_priv exception;
exception_role exception;

Begin

select count(*) into Tmp_count from role_sys_privs where a_priv = role_sys_privs.privilege;
select count(*) into Tmp_count2 from role_sys_privs where a_role = role_sys_privs.role;
if(Tmp_count != 0 AND Tmp_count2 != 0) then
Tmp_query:='REVOKE '||a_priv|| ' ON ' ||a_object|| ' FROM ' ||a_role;
execute IMMEDIATE (Tmp_query);
elsif(Tmp_count=0) then
raise exception_priv;
elsif(Tmp_count2=0) then
raise exception_role;
end if;

Exception 
when exception_priv then 
RAISE_APPLICATION_ERROR(-20000,'Privilege chua ton tai.');
when exception_role then
RAISE_APPLICATION_ERROR(-20000,'Username chua ton tai.');
WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
End;

create or replace procedure Grant_Role_toUser(User_name in varchar2, Role_name in varchar2,grant_option int )
authid current_user
is
Tmp_Query varchar2(100);
Tmp_count int;
exception_username exception;
exception_rolename exception;
begin 
select count(*) into Tmp_count from all_users where username=User_name;

if(Tmp_count!=0) then
    if(grant_option =0) then 
    Tmp_Query:='Grant '||Role_name||' to ' ||User_name;
    elsif( grant_option=1) then 
    Tmp_Query:='Grant '||Role_name||' to ' ||User_name||' with grant option';
    end if;
execute immediate (Tmp_Query);

elsif(Tmp_count=0)then
raise exception_username;
end if;

Exception 
when exception_username then 
RAISE_APPLICATION_ERROR(-20000,'User chua ton tai');
when others then
RAISE_APPLICATION_ERROR(-20000,'Role_name da ton tai');
end;

-------------%%%%%%%%%-------------------
--Tai khoan Tiep Tan
EXEC Create_User('NV00252', 'NV00252');
EXEC Create_User('NV00780', 'NV00780');
--Tai khoan Nhan Vien Tai Vu
EXEC Create_User('NV00501', 'NV00501');
EXEC Create_User('NV00397', 'NV00397');
--Tai khoan Bac Si
EXEC Create_User('NV00218', 'NV00218');
EXEC Create_User('NV00469', 'NV00469');
--Tai khoan Nhan Vien Ban Thuoc
EXEC Create_User('NV00034', 'NV00034');
EXEC Create_User('NV00835', 'NV00835');
--Tai khoan Ke Toan
EXEC Create_User('NV00622', 'NV00622');
EXEC Create_User('NV00515', 'NV00515');
-------------%%%%%%%%%-------------------
--Thuc hien chinh sach cho Bac Si: chi co the them hoac chinh sua thong tin lien quan den viec dieu tri benh
EXEC Create_Role('BacSi');
EXEC Grant_Role_toUser('NV00218', 'BacSi', 0);
EXEC Grant_Role_toUser('NV00469', 'BacSi', 0);
EXEC Grant_Object_Privs_toRole('BacSi','SELECT, UPDATE', 'LICHSUKHAMBENH');
-------------%%%%%%%%%-------------------
--Thuc hien chinh sach cho Nhan Vien bo phan Ban Thuoc: Chi co the nhin thay toa thuoc ma bac si
--ke cho tung benh nhanh de tinh tien thuoc cho benh nhan ma khong the xem benh nhan benh gi hay bat cu thong tin gi khac.
EXEC Create_Role('NVBanThuoc');
EXEC Grant_Role_toUser('NV00034', 'NVBanThuoc', 0);
EXEC Grant_Role_toUser('NV00835', 'NVBanThuoc', 0);
EXEC Grant_Object_Privs_toRole('NVBanThuoc','SELECT', 'DONTHUOC');
-------------%%%%%%%%%-------------------
--Thuc hien chinh sach cho Nhan Vien Ke Toan: Tinh luong cho cac bac si va cac nhan vien khac dua vao luong co ban, phu cap
--so ngay cong. Nhan vien ke toan khong nhin thay bat cu thong tin gi trong he thong lien quan den qua trinh dieu tri benh
--cho benh nhan cua cac bo phan lien quan
EXEC Create_Role('KeToan');
EXEC Grant_Role_toUser('NV00622', 'KeToan', 0);
EXEC Grant_Role_toUser('NV00515', 'KeToan', 0);
EXEC Grant_Object_Privs_toRole('KeToan','SELECT', 'CHAMCONG');
EXEC Grant_Object_Privs_toRole('KeToan','SELECT', 'NHANVIEN');
-------------%%%%%%%%%-------------------
--Thuc hien chinh sach cho Tiep Tan va Dieu phoi Benh: duoc quyen them, xoa, sua, tim kiem thong tin benh nhan, duoc dieu phoi benh
--nhung khong the xem cac thong tin lien quan den so tien cho tung thu tuc kham, xet nghiem hoac chup hinh hoac thong tin thuoc
--dieu tri benh cho benh nhan
EXEC Create_Role('TiepTan');
EXEC Grant_Role_toUser('NV00252', 'TiepTan', 0);
EXEC Grant_Role_toUser('NV00780', 'TiepTan', 0);
EXEC Grant_Object_Privs_toRole('TiepTan','SELECT, UPDATE, INSERT, DELETE', 'BENHNHAN');
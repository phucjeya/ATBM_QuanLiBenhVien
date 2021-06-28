-----------------%%%%%%%%%%%%%%%%%%%-----------------
--Thuc hien chinh sach: Bac si chi co the them hoac sua thong tin lien quan den viec dieu tri benh
--ma bac si chiu trach nhiem dieu tri. Bac si khong duoc xem hoac chinh sua thong tin khac cua nhung
--benh nhan do bac si khac dieu tri hoac nhung thong tin khac trong he thong.
create or replace function KhongXemBenhNhanKhac(
    p_schema IN VARCHAR2 DEFAULT NULL,
    p_object IN VARCHAR2 DEFAULT NULL)
    return varchar2
    as
        username varchar2(30);
        dbrole NHANVIEN.VAITRO%TYPE DEFAULT NULL;
    begin
        username := SYS_CONTEXT ('USERENV', 'SESSION_USER'); --Lay username tu Session, username phai duoc dat giong nhu ma NV trong db
        select VAITRO into dbrole 
        from NHANVIEN
        where MANV = username;
        if(dbrole = 'Bac Si') then 
            return 'MANV =  SYS_CONTEXT(''USERENV'', ''SESSION_USER'')'; --MANV = username
        else 
            return '';
        end if;
    end;
-----------------%%%%%%%%%%%%%%%%%%%-----------------
BEGIN
DBMS_RLS.add_policy
(object_schema => 'SYSTEM',
object_name => 'LICHSUKHAMBENH',
policy_name => 'ChanDoan_BenhNhan',
statement_types => 'SELECT, UPDATE',
update_check => true,
policy_function => 'KhongXemBenhNhanKhac'); -- the name of a PL/SQL function
END;

-----------------%%%%%%%%%%%%%%%%%%%-----------------
--Thuc hien chinh sach: Nhan Vien chi co the xem thong tin cua ban than
create or replace function KhongXemNhanVienKhac(
    p_schema IN VARCHAR2 DEFAULT NULL,
    p_object IN VARCHAR2 DEFAULT NULL)
    return varchar2
    as
        username varchar2(30);
        dbrole NHANVIEN.VAITRO%TYPE DEFAULT NULL;
    begin
    
        username := SYS_CONTEXT ('USERENV', 'SESSION_USER'); --Lay username tu Session, username phai duoc dat giong nhu ma NV trong db
        if(username = 'SYSTEM') then 
            return '';
        else
            return 'MANV =  SYS_CONTEXT(''USERENV'', ''SESSION_USER'')'; --MANV = username
        end if;
    end;
-----------------%%%%%%%%%%%%%%%%%%%-----------------
BEGIN
DBMS_RLS.add_policy
(object_schema => 'SYSTEM',
object_name => 'NhanVien',
policy_name => 'ThongTin_CaNhan',
statement_types => 'SELECT',
update_check => true,
policy_function => 'KhongXemNhanVienKhac'); -- the name of a PL/SQL function
END;
-----------------%%%%%%%%%%%%%%%%%%%-----------------
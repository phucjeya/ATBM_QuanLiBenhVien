/*Trigger ngày sinh tren bang BenhNhan*/
Create or Replace trigger Trigger_NamSinh_BenhNhan
before insert OR update
on BenhNhan
for each row
declare 
    NamSinh INT;
Begin
NamSinh := :new.NamSinh;
if(NamSinh<0)
then
 RAISE_APPLICATION_ERROR(-20000,'Nam Sinh khong am');
elsif(NamSinh>extract(YEAR from sysdate))
then RAISE_APPLICATION_ERROR(-20000,'Nam Sinh lon hon nam hien tai');
End if;
End;

/* Trigger Gioi tinh*/
Create or Replace trigger Trigger_GioiTinh_BenhNhan
before insert OR update
on BenhNhan
for each row
declare 
GioiTinh varchar(20);
Begin
GioiTinh := :new.GioiTinh;
if( GioiTinh!='Nam' and  GioiTinh!='Nu'and GioiTinh!='Chua xac dinh' and GioiTinh!='nam' and GioiTinh!='nu' and GioiTinh!='chua xac dinh') 
then RAISE_APPLICATION_ERROR(-20001,'Ban phai nhap 3 gioi tinh theo quy dinh: Nam, Nu, Chua Xac Dinh');
end if; 
End;

/* Trigger Thoi gian bat dau phai truoc thoi gian k?t thúc */
Create or Replace trigger Trigger_ThoiGian_CaTruc
before insert OR update
on CaTruc
for each row
declare 
Tgbd date;
Tgkt date;
Begin 
Tgbd := :new.ThoiGianBatDau;
Tgkt := :new.ThoiGianKetThuc;
if(Tgbd >= Tgkt)
then RAISE_APPLICATION_ERROR(-20000,'ThoiGian bat dau phai nho hon thoi gian ket thuc');
end if;
End;

/*Trigger chi phi tren bang loai dich vu phai lon >=0*/
Create or Replace trigger Trigger_ChiPhi_LoaiDichVu
before insert OR update
on LoaiDichVu
for each row
declare 
    ChiPhi number(19,4);
Begin 
    ChiPhi := :new.ChiPhi;
    if(ChiPhi<0)
    then RAISE_APPLICATION_ERROR(-20000,'Chi phi phai >=0');
    end if;
End;

/*Luong phai lon hon 0 trên bang NhanVien*/
Create or Replace trigger Trigger_ChiPhi_LoaiDichVu
before insert OR update
on NhanVien
for each row
declare 
Luong number(19,4);
Begin
Luong := :new.Luong;
If(Luong<=0)
    then RAISE_APPLICATION_ERROR(-20000,'Luong phai >0');
End if;
End;


/* Trigger gioi tinh trên b?ng Nhân Viên*/
Create or Replace trigger Trigger_GioiTinh_NhanVien
before insert OR update
on NhanVien
for each row
declare 
GioiTinh varchar(20);
Begin
GioiTinh := :new.GioiTinh;
if( GioiTinh!='Nam' and GioiTinh!='Nu'and  GioiTinh!='Chua xac dinh' and GioiTinh!='nam' and GioiTinh!='nu'and GioiTinh!='chua xac dinh') 
then RAISE_APPLICATION_ERROR(-20001,'Ban phai nhap 3 gioi tinh theo quy dinh: Nam, Nu, Chua Xac Dinh');
end if; 
End;

/* Lan khám phai lon hon 0 trên bang LS Khám Benh*/
Create or Replace trigger Trigger_LanKham_LSKhamBenh
before insert OR update
on LichSuKhamBenh
for each row
declare 
LanKham int;
Begin 
LanKham := :new.LanKhamBenh;
if(LanKham<=0)
then RAISE_APPLICATION_ERROR(-20001,'Lan kham phai >0');
ENd if;
End;

/* Chi phi trog bang LS Kham Benh ph?i >=0*/
Create or Replace trigger Trigger_ChiPhi_LSKhamBenh
before insert OR update
on LichSuKhamBenh
for each row
declare 
ChiPhi number(19,4);
Begin 
ChiPhi := :new.ChiPhi;
if(ChiPhi<0)
then RAISE_APPLICATION_ERROR(-20001,'Chi phi phai >=0');
ENd if;
End;

/*Tong tien trên bang hóa don >=0*/
Create or Replace trigger Trigger_TongTien_HoaDon
before insert OR update
on HoaDon
for each row
declare 
TongTien number(19,4);
Begin 
TongTien := :new.TongTien;
if(TongTien<0)
    then RAISE_APPLICATION_ERROR(-20001,'TongTien phai >=0');
ENd if;
End;

/*Thoi Gian Lap hóa don trong moi lan khám>= th?i gian khám bênh trong b?ng khám bênh trên LS Khám B?nh >=0*/
Create or Replace trigger Trigger_ThoiGian_HoaDon
before insert OR update
on HoaDon
for each row
declare 
ThoiGianLapHD date;
ThoiGianKB date;
Begin 

Select :new.ThoiGianLap ,lskb.thoigian into thoigianlaphd, ThoiGianKB
From LichSuKhamBenh LSKB
where LSKB.MaLichSu= :new.MaLichSu;

if(ThoiGianLapHD<ThoiGianKB)
then RAISE_APPLICATION_ERROR(-20001,'ThoiGian lap hoa don phai lon hon thoi gian kham benh');
end if;

End;

/* SoNgayCong tren table ChamCong>=0 */
/* So Ngay Cong quy DInh >=0*/
Create or Replace trigger Trigger_SoNgayCong_SoNgayCongQuyDinh_ChamCong
before insert OR update
on ChamCong
for each row
declare 
SoNgayCong int;
SoNgayCongQuyDinh int;
Begin 
SoNgayCong := :new.SoNgayCong;
SoNgayCongQuyDinh :=:new.SoNgayCongQuyDinh;
if(SoNgayCong<0)
then  RAISE_APPLICATION_ERROR(-20001,'So NgayCong phai>=0');
ENd if;
If(SoNgayCongQuyDinh<0)
then  RAISE_APPLICATION_ERROR(-20001,'So NgayCong Quy Dinh phai>=0');
End IF;
End;


/* Gia thuoc tren bang thuoc >0*/
Create or Replace trigger Trigger_GiaThuoc_Thuoc
before insert OR update
on Thuoc
for each row
declare 
GiaThuoc number(19,4);

Begin 
GiaThuoc := :new.Gia;

if(GiaThuoc<0)
then  RAISE_APPLICATION_ERROR(-20001,'GiaThuoc>0');
ENd if;

End;


/* Lieu luong >0 tren bang CT_ DonThuoc*/
Create or Replace trigger Trigger_GiaThuoc_CT_DonThuoc
before insert OR update
on CT_DONTHUOC
for each row
declare 
LieuLuong nvarchar2(30);

Begin 
LieuLuong := :new.lieuluong;

if(LieuLuong<0)
then  RAISE_APPLICATION_ERROR(-20001,'LieuLuong>0');
ENd if;

End;


/*Thoi Gian Lap hóa don <= thoi gian thuc hien dich vu tren bang TTDV*/
Create or Replace trigger Trigger_ThoiGian_TTDV
before insert OR update
on TTDV
for each row
declare 
ThoiGianThucHien date;
ThoiGianLapHD date;
Begin 

Select :new.ThoiGianThucHien,HD.ThoiGianLap into ThoiGianThucHien, ThoiGianLapHD
From HoaDon HD
where HD.MaHoaDon= :new.MaHoaDon;

if(ThoiGianLapHD>ThoiGianThucHien)
then RAISE_APPLICATION_ERROR(-20001,'ThoiGian lap hoa don phai nho hon thoi gian thuc hien');
end if;
end;



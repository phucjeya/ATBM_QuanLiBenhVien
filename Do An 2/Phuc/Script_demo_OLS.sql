insert into NHANVIEN values('NVTV100','Hong X','Nu','Vi Thanh','0339603361',10000000,'Nhan Vien Tai Vu',null,null);
insert into NHANVIEN values('NVTV101','Hong PHUC','NAM','PHU YEn','0339803361',45000000,'Nhan Vien Tai Vu',null,null);
insert into NHANVIEN values('NVTV102','Phuong Nam','NAM','Sai Gon','0339399361',55000000,'Nhan Vien Tai Vu',null,null);
insert into NHANVIEN values('NVBT103','Hoai Nam','NAM','Sai Gon','0339399361',55000000,'Nhan Vien Ban Thuoc',null,null);
insert into NHANVIEN values('NVBT104','Minh Phuong','NAM','Sai Gon','0339599361',57000000,'Nhan Vien Ban Thuoc',null,null);

select* from NHANVIEN;
insert into LICHSUKHAMBENH values('LSKB100',3,'3-JUL-2021',200000,null,'NVTV100');
insert into LICHSUKHAMBENH values('LSKB101',1,'3-JUL-2021',400000,null,'NVTV101');
insert into LICHSUKHAMBENH values('LSKB102',2,'4-JUL-2021',500000,null,'NVTV102');
insert into LICHSUKHAMBENH values('LSKB105',2,'2-JUL-2021',500000,null,'NVTV102');
insert into LICHSUKHAMBENH values('LSKB106',2,'5-JUL-2021',507000,null,'NVBT103');
select* from LICHSUKHAMBENH;

select* from HOADON;

insert into HOADON(mahoadon,thoigianlap,tongtien,loaihoadon,malichsu,manv) values('HDCNA123',TO_DATE('01-JUL-2021', 'DD-MON-YYYY'),100000,'DICHVU','LSKB100','NVTV101');
insert into HOADON(mahoadon,thoigianlap,tongtien,loaihoadon,malichsu,manv) values('HDCNA124',TO_DATE('01-JUL-2021', 'DD-MON-YYYY'),20000,'DICHVU','LSKB101','NVTV101');
insert into HOADON(mahoadon,thoigianlap,tongtien,loaihoadon,malichsu,manv) values('HDCNB125',TO_DATE('01-JUN-2021', 'DD-MON-YYYY'),380000,'DICHVU','LSKB100','NVTV102');
insert into HOADON(mahoadon,thoigianlap,tongtien,loaihoadon,malichsu,manv) values('HDCNB126',TO_DATE('01-SEP-2021', 'DD-MON-YYYY'),78000,'DICHVU','LSKB101,'NVTV102');
insert into HOADON(mahoadon,thoigianlap,tongtien,loaihoadon,malichsu,manv) values('HDCNB127',TO_DATE('02-SEP-2021', 'DD-MON-YYYY'),88000,'DICHVU','LSKB105','NVTV102');
insert into HOADON(mahoadon,thoigianlap,tongtien,loaihoadon,malichsu,manv) values('HDCNB128',TO_DATE('02-SEP-2021', 'DD-MON-YYYY'),80000,'DICHVU','LSKB105','NVTV102');
insert into HOADON(mahoadon,thoigianlap,tongtien,loaihoadon,malichsu,manv) values('HDCNA129',TO_DATE('02-SEP-2021', 'DD-MON-YYYY'),80000,'THUOC','LSKB105','NVBT103');
insert into HOADON(mahoadon,thoigianlap,tongtien,loaihoadon,malichsu,manv) values('HDCNB130',TO_DATE('02-SEP-2021', 'DD-MON-YYYY'),867000,'THUOC','LSKB105','NVBT103');
select* from HOADON;

--Standard audit
insert into HOADON values('HDCNB126','01-JUL-21',78000,'DICH VU',null,null);
select* from BENHNHAN;
--FGA CT_DONTHUOC
insert into CT_DONTHUOC values('DT123','MT100','2-JUL-2021');
insert into DONTHUOC values('DT123','1-JUL-2021',null);
insert into THUOC values('MT100','Astrazeneca','Tri bien the Delta','Cho nguoi hon 65 tuoi',10000,null);

--When succesfull
insert into CATRUC values('MCT101','5-JUL-2021','6-JUL-2021',4);
update CATRUC
set cathu=6
where catruc.macatruc='MCT100';
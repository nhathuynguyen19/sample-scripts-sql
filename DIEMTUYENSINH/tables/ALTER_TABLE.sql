--
alter table SINHVIEN
add constraint FK_SINHVIEN_LOP
foreign key (MaLop)
references LOP(MaLop)

go
--
alter table SINHVIEN
add constraint FK_SINHVIEN_DIEMTS
foreign key (MaSinhVien)
references DIEMTS(MaSinhVien)
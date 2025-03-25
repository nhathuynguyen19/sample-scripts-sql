alter table HOSOVAYVON_THANHVIEN
add constraint PK_HOSOVAYVON_THANHVIEN_HOSOVAYVON
foreign key (MaHoSo)
references [HOSOVAYVON](MaHoSo)

alter table HOSOVAYVON_THANHVIEN
add constraint PK_HOSOVAYVON_THANHVIEN_THANHVIEN
FOREIGN KEY (MaThanhVien)
references [THANHVIEN](MaThanhVien)


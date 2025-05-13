CREATE DATABASE MSSV_20T1020001;
GO

USE MSSV_20T1020001;
GO

CREATE TABLE NhanVien (
    MaNhanVien NVARCHAR(50) NOT NULL PRIMARY KEY,
    HoTen NVARCHAR(50) NOT NULL,
    NgaySinh DATE NOT NULL,
    Email NVARCHAR(50) NOT NULL,
    DiDong NVARCHAR(50) NOT NULL
);
GO

CREATE TABLE DuAn (
    MaDuAn NVARCHAR(50) NOT NULL PRIMARY KEY,
    TenDuAn NVARCHAR(255) NOT NULL,
    NgayBatDau DATE NOT NULL,
    SoNguoiThamGia INT NOT NULL
);
GO

CREATE TABLE NhanVien_DuAn (
    MaNhanVien NVARCHAR(50) NOT NULL,
    MaDuAn NVARCHAR(50) NOT NULL,
    NgayGiaoViec DATE NOT NULL,
    MoTaCongViec NVARCHAR(255),
    PRIMARY KEY (MaNhanVien, MaDuAn),
    FOREIGN KEY (MaNhanVien) REFERENCES NhanVien(MaNhanVien),
    FOREIGN KEY (MaDuAn) REFERENCES DuAn(MaDuAn)
);
GO

INSERT INTO NhanVien (MaNhanVien, HoTen, NgaySinh, Email, DiDong)
VALUES
('NV001', N'Nguyễn Thanh An', '1980-12-01', 'thanhan@gmail.com', '0914422578'),
('NV002', N'Trần Chí Hiếu', '1985-05-17', 'hieu85@gmail.com', '0987454125'),
('NV003', N'Vũ Thành Chung', '1986-11-20', 'chungvt@gmail.com', '0935254771'),
('NV005', N'Lê Thị Hải Yến', '1986-08-14', 'lthyen@gmail.com', '0983120547');
GO

INSERT INTO DuAn (MaDuAn, TenDuAn, NgayBatDau, SoNguoiThamGia)
VALUES
('DA001', 'SmartUni', '2022-01-01', 6),
('DA002', 'E-Shop', '2022-05-01', 5),
('DA003', 'LiteCMS', '2022-09-01', 4);
GO

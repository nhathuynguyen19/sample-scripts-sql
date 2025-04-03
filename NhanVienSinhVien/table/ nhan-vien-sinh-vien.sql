USE [NhanVienSinhVien];
GO

CREATE TABLE [dbo].[Khoa] (
    [MaKhoa]  NVARCHAR (1)   NOT NULL,
    [TenKhoa] NVARCHAR (255) NOT NULL,
    CONSTRAINT [PK_Khoa] PRIMARY KEY CLUSTERED ([MaKhoa] ASC)
);
GO

CREATE TABLE [dbo].[NhanVien] (
    [MaNhanVien] NVARCHAR (50) NOT NULL,
    [HoTen]      NVARCHAR (50) NOT NULL,
    [NgaySinh]   DATE          NOT NULL,
    [QueQuan]    NVARCHAR (50) NOT NULL,
    [HeSoLuong]  FLOAT (53)    NOT NULL,
    [Luong]      MONEY         NOT NULL,
    [MaKhoa]     NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED ([MaNhanVien] ASC)
);
GO

CREATE TABLE [dbo].[SinhVien] (
    [MaSinhVien]    NVARCHAR (50)  NOT NULL,
    [HoTen]         NVARCHAR (255) NOT NULL,
    [NgaySinh]      DATE           NOT NULL,
    [QueQuan]       NVARCHAR (50)  NOT NULL,
    [DiemTrungBinh] FLOAT (53)     NOT NULL,
    [MaKhoa]        NVARCHAR (50)  NOT NULL,
    CONSTRAINT [PK_SinhVien] PRIMARY KEY CLUSTERED ([MaSinhVien] ASC)
);
GO


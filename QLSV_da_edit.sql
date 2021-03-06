create database QLSV
GO
USE [QLSV]
GO
/****** Object:  Table [dbo].[CT_DaoTao]    Script Date: 5/24/2021 9:27:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CT_DaoTao](
	[MaCTDT] [varchar](10) NOT NULL,
	[TenCTDT] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DT] PRIMARY KEY CLUSTERED 
(
	[MaCTDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KetQuaThi]    Script Date: 5/24/2021 9:27:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KetQuaThi](
	[MaSV] [varchar](10) NOT NULL,
	[MaMH] [varchar](10) NOT NULL,
	[LanThi] [int] NOT NULL,
	[DiemThi] [float] NOT NULL,
 CONSTRAINT [PK_KQT] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC,
	[MaMH] ASC,
	[LanThi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhoaHoc]    Script Date: 5/24/2021 9:27:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhoaHoc](
	[MaKH] [varchar](10) NOT NULL,
	[MaCTDT] [varchar](10) NOT NULL,
	[TenKH] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_KH] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Lop]    Script Date: 5/24/2021 9:27:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Lop](
	[MaLop] [varchar](10) NOT NULL,
	[MaKH] [varchar](10) NOT NULL,
	[TenLop] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LOP] PRIMARY KEY CLUSTERED 
(
	[MaLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 5/24/2021 9:27:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MonHoc](
	[MaMH] [varchar](10) NOT NULL,
	[TenMH] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_MH] PRIMARY KEY CLUSTERED 
(
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 5/24/2021 9:27:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SinhVien](
	[MaSV] [varchar](10) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[GioiTinh] [nvarchar](3) NOT NULL,
	[NgaySinh] [smalldatetime] NULL,
	[NoiSinh] [nvarchar](50) NOT NULL,
	[MaLop] [varchar](10) NOT NULL,
 CONSTRAINT [PK_SV] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[CT_DaoTao] ([MaCTDT], [TenCTDT]) VALUES (N'1', N'Cử Nhân')
INSERT [dbo].[CT_DaoTao] ([MaCTDT], [TenCTDT]) VALUES (N'2', N'Cao Đẳng')
INSERT [dbo].[CT_DaoTao] ([MaCTDT], [TenCTDT]) VALUES (N'3', N'Trung Cầp')
INSERT [dbo].[KetQuaThi] ([MaSV], [MaMH], [LanThi], [DiemThi]) VALUES (N'K116', N'TH101', 1, 8)
INSERT [dbo].[KetQuaThi] ([MaSV], [MaMH], [LanThi], [DiemThi]) VALUES (N'K116', N'TH102', 1, 7.5)
INSERT [dbo].[KetQuaThi] ([MaSV], [MaMH], [LanThi], [DiemThi]) VALUES (N'K116', N'TH110', 1, 7)
INSERT [dbo].[KetQuaThi] ([MaSV], [MaMH], [LanThi], [DiemThi]) VALUES (N'K117', N'TH101', 1, 4)
INSERT [dbo].[KetQuaThi] ([MaSV], [MaMH], [LanThi], [DiemThi]) VALUES (N'K117', N'TH101', 2, 7)
INSERT [dbo].[KetQuaThi] ([MaSV], [MaMH], [LanThi], [DiemThi]) VALUES (N'K118', N'TH101', 1, 6.5)
INSERT [dbo].[KetQuaThi] ([MaSV], [MaMH], [LanThi], [DiemThi]) VALUES (N'K118', N'TH102', 1, 9)
INSERT [dbo].[KetQuaThi] ([MaSV], [MaMH], [LanThi], [DiemThi]) VALUES (N'K119', N'TH101', 1, 6)
INSERT [dbo].[KetQuaThi] ([MaSV], [MaMH], [LanThi], [DiemThi]) VALUES (N'K119', N'TH102', 1, 5)
INSERT [dbo].[KetQuaThi] ([MaSV], [MaMH], [LanThi], [DiemThi]) VALUES (N'K120', N'TH101', 1, 5)
INSERT [dbo].[KetQuaThi] ([MaSV], [MaMH], [LanThi], [DiemThi]) VALUES (N'K120', N'TH102', 1, 7)
INSERT [dbo].[KhoaHoc] ([MaKH], [MaCTDT], [TenKH]) VALUES (N'1', N'1', N'Khóa 1 năm 2005')
INSERT [dbo].[KhoaHoc] ([MaKH], [MaCTDT], [TenKH]) VALUES (N'2', N'1', N'Khóa 2 năm 2006')
INSERT [dbo].[KhoaHoc] ([MaKH], [MaCTDT], [TenKH]) VALUES (N'3', N'2', N'Khóa 1 năm 2007')
INSERT [dbo].[KhoaHoc] ([MaKH], [MaCTDT], [TenKH]) VALUES (N'4', N'3', N'Khóa 1 năm 2008')
INSERT [dbo].[KhoaHoc] ([MaKH], [MaCTDT], [TenKH]) VALUES (N'5', N'2', N'Khóa 2 năm 2008')
INSERT [dbo].[Lop] ([MaLop], [MaKH], [TenLop]) VALUES (N'1', N'1', N'K1_1')
INSERT [dbo].[Lop] ([MaLop], [MaKH], [TenLop]) VALUES (N'2', N'1', N'K2_1')
INSERT [dbo].[Lop] ([MaLop], [MaKH], [TenLop]) VALUES (N'3', N'1', N'K3_1')
INSERT [dbo].[Lop] ([MaLop], [MaKH], [TenLop]) VALUES (N'4', N'2', N'K3_2')
INSERT [dbo].[MonHoc] ([MaMH], [TenMH]) VALUES (N'TH101', N'Tin học đại cương')
INSERT [dbo].[MonHoc] ([MaMH], [TenMH]) VALUES (N'TH102', N'Cơ sở dữ liệu')
INSERT [dbo].[MonHoc] ([MaMH], [TenMH]) VALUES (N'TH110', N'Toán rời rạc')
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [GioiTinh], [NgaySinh], [NoiSinh], [MaLop]) VALUES (N'K116', N'Đinh Nguyễn Vân Anh', N'Nữ', CAST(N'1985-12-18 00:00:00' AS SmallDateTime), N'Bình Thuận', N'1')
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [GioiTinh], [NgaySinh], [NoiSinh], [MaLop]) VALUES (N'K117', N'Trần Hoàng Anh', N'Nữ', CAST(N'1986-08-04 00:00:00' AS SmallDateTime), N'Bình Dương', N'1')
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [GioiTinh], [NgaySinh], [NoiSinh], [MaLop]) VALUES (N'K118', N'Bùi Thanh Bình', N'Nam', CAST(N'1985-10-23 00:00:00' AS SmallDateTime), N'Đồng Nai', N'1')
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [GioiTinh], [NgaySinh], [NoiSinh], [MaLop]) VALUES (N'K119', N'Phạm Nhật Tân', N'Nam', CAST(N'1985-01-15 00:00:00' AS SmallDateTime), N'Đồng Tháp', N'2')
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [GioiTinh], [NgaySinh], [NoiSinh], [MaLop]) VALUES (N'K120', N'Định Thiện Hòa', N'Nam', CAST(N'1985-12-08 00:00:00' AS SmallDateTime), N'Vĩnh Long', N'3')
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [GioiTinh], [NgaySinh], [NoiSinh], [MaLop]) VALUES (N'K121', N'Nguyễn Anh Khoa', N'Nam', CAST(N'1985-11-14 00:00:00' AS SmallDateTime), N'Vũng Tàu', N'3')
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [GioiTinh], [NgaySinh], [NoiSinh], [MaLop]) VALUES (N'K122', N'Trương Mộng Thúy', N'Nữ', CAST(N'1986-05-12 00:00:00' AS SmallDateTime), N'Cần Thơ', N'2')
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [GioiTinh], [NgaySinh], [NoiSinh], [MaLop]) VALUES (N'K123', N'Võ Anh Thi', N'Nữ', CAST(N'1986-05-23 00:00:00' AS SmallDateTime), N'Bến Tre', N'2')
ALTER TABLE [dbo].[KetQuaThi]  WITH CHECK ADD  CONSTRAINT [FK_KQT1] FOREIGN KEY([MaSV])
REFERENCES [dbo].[SinhVien] ([MaSV])
GO
ALTER TABLE [dbo].[KetQuaThi] CHECK CONSTRAINT [FK_KQT1]
GO
ALTER TABLE [dbo].[KetQuaThi]  WITH CHECK ADD  CONSTRAINT [FK_KQT2] FOREIGN KEY([MaMH])
REFERENCES [dbo].[MonHoc] ([MaMH])
GO
ALTER TABLE [dbo].[KetQuaThi] CHECK CONSTRAINT [FK_KQT2]
GO
ALTER TABLE [dbo].[KhoaHoc]  WITH CHECK ADD  CONSTRAINT [FK_KH] FOREIGN KEY([MaCTDT])
REFERENCES [dbo].[CT_DaoTao] ([MaCTDT])
GO
ALTER TABLE [dbo].[KhoaHoc] CHECK CONSTRAINT [FK_KH]
GO
ALTER TABLE [dbo].[Lop]  WITH CHECK ADD  CONSTRAINT [FK_LOP] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhoaHoc] ([MaKH])
GO
ALTER TABLE [dbo].[Lop] CHECK CONSTRAINT [FK_LOP]
GO
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD  CONSTRAINT [FK_SV] FOREIGN KEY([MaLop])
REFERENCES [dbo].[Lop] ([MaLop])
GO
ALTER TABLE [dbo].[SinhVien] CHECK CONSTRAINT [FK_SV]
GO
USE [master]
GO
ALTER DATABASE [QLSV] SET  READ_WRITE 
GO
-- Trigger xoá bảng 
-- 1.Khi xoá bảng sinh viên tiến hành xoá bảng kết quả thi trước
go
create trigger delete_sinhvien on [SinhVien] instead of delete as
begin
	delete from KetQuaThi where MaSV in(select MaSV from deleted);
	delete from SINHVIEN Where MaSV in(select MaSV from deleted);
end;
go
-- 2.Khi xoá bảng môn học tiến hành xoá bảng kết quả thi trước
go
create trigger delete_monhoc on [MonHoc] instead of delete as
begin
	delete from KetQuaThi where MaMH in(select MaMH from deleted);
	delete from MonHoc Where MaMH in(select MaMH from deleted);
end;
go
-- 3.Khi xoá bảng khoá học tiến hành xoá bảng lớp trước
go
create trigger delete_khoahoc on [KhoaHoc] instead of delete as
begin
	delete from SinhVien where MaLop in(select MaLop from deleted);
	delete from Lop where MaKH in(select MaKH from deleted);
	delete from KhoaHoc Where MaKH in(select MaKH from deleted);
end;
go
-- 4.Khi xoá bảng lớp tiến hành xoá bảng sinh viên trước
go
create trigger delete_lop on [Lop] instead of delete as
begin
	delete from SinhVien where MaLop in(select MaLop from deleted);
	delete from Lop where MaLop in(select MaLop from deleted);
end;
go

USE [Nuocngot]
GO
/****** Object:  Table [dbo].[Chitiethoadon]    Script Date: 11/07/2022 8:56:48 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chitiethoadon](
	[Mact] [int] IDENTITY(1,1) NOT NULL,
	[Mahd] [int] NULL,
	[Masp] [int] NULL,
	[Soluong] [int] NULL,
 CONSTRAINT [PK_Chitiethoadon] PRIMARY KEY CLUSTERED 
(
	[Mact] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhmucSP]    Script Date: 11/07/2022 8:56:48 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhmucSP](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TenDm] [nvarchar](50) NULL,
 CONSTRAINT [PK_DanhmucSP] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hoadon]    Script Date: 11/07/2022 8:56:48 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hoadon](
	[Mahd] [int] IDENTITY(1,1) NOT NULL,
	[Hoten] [nvarchar](50) NULL,
	[Diachi] [nvarchar](250) NULL,
	[Ngaygui] [date] NULL,
 CONSTRAINT [PK_Hoadon] PRIMARY KEY CLUSTERED 
(
	[Mahd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SP]    Script Date: 11/07/2022 8:56:48 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SP](
	[Masp] [int] IDENTITY(1,1) NOT NULL,
	[Anh] [varchar](250) NULL,
	[Ten] [nvarchar](50) NULL,
	[Gia] [int] NULL,
	[Ban] [int] NULL,
	[Loai] [nvarchar](50) NULL,
 CONSTRAINT [PK_SP] PRIMARY KEY CLUSTERED 
(
	[Masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tintuc]    Script Date: 11/07/2022 8:56:48 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tintuc](
	[Matt] [int] IDENTITY(1,1) NOT NULL,
	[Anh] [nvarchar](50) NULL,
	[Tentt] [nvarchar](50) NULL,
	[Noidung] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Tintuc] PRIMARY KEY CLUSTERED 
(
	[Matt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[addct]    Script Date: 11/07/2022 8:56:48 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[addct]
   
  @Mahd int,
  @Masp int,
  @Soluong int
  as
  begin 
  insert into Chitiethoadon
  (
  
	  [Mahd]
	  ,[Masp]
	  ,[Soluong]

  )
  values
  (
 
  @Mahd ,
  @Masp ,
  @Soluong 
  )
  end
GO
/****** Object:  StoredProcedure [dbo].[addDanhm]    Script Date: 11/07/2022 8:56:48 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create proc [dbo].[addDanhm]
  @TenDm varchar(50)
  as
  begin 
  insert into DanhmucSP
  (
   
      [TenDm]
  )
  values
  (
 
  @TenDm 
  )
  end
GO
/****** Object:  StoredProcedure [dbo].[addHD]    Script Date: 11/07/2022 8:56:48 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[addHD]
     @Mahd int,
  @Hoten nvarchar(50),
  @Diachi nvarchar(50),
  @Ngaygui Date
  as
  begin 
  insert into Hoadon
  (
  
	  [Mahd]
	  ,[Hoten]
	  ,[Diachi]
	  ,[Ngaygui]


  )
  values
  (
 
  @Mahd ,
  @Hoten ,

  @Diachi ,
  @Ngaygui
  )
  end
GO
/****** Object:  StoredProcedure [dbo].[addnew]    Script Date: 11/07/2022 8:56:48 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  create proc [dbo].[addnew]
   
  @Anh nvarchar(50),
  @Tentt nvarchar(50),
  @Noidung nvarchar(50)
  as
  begin 
  insert into Tintuc
  (
  
      [Anh]
	  ,[Tentt]
	  ,[Noidung]
  )
  values
  (
 
  @Anh,
   @Tentt,
    @Noidung
  )
  end
GO
/****** Object:  StoredProcedure [dbo].[addSP]    Script Date: 11/07/2022 8:56:48 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  create proc [dbo].[addSP]
 
  @Anh varchar(50),
  @Ten varchar(50),
  @Gia int,
  @Ban int,
  @Loai varchar(50)
  as
  begin 
  insert into SP
  (
   [Anh]
      ,[Ten]
      ,[Gia]
      ,[Ban]
      ,[Loai]


  )
  values
  (
  
  @Anh ,
  @Ten ,
  @Gia ,
  @Ban ,
  @Loai 
  )
  end
GO
/****** Object:  StoredProcedure [dbo].[delct]    Script Date: 11/07/2022 8:56:48 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

  create proc [dbo].[delct]
  @Mact int,
  @Mahd int,
  @Masp int,
  @Soluong int
  as
  begin
  delete from Chitiethoadon where Mact=@Mact
  end
GO
/****** Object:  StoredProcedure [dbo].[deldanhm]    Script Date: 11/07/2022 8:56:48 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[deldanhm]
  @id int
  as
  begin
  delete from DanhmucSP where id=@id
  end
GO
/****** Object:  StoredProcedure [dbo].[deletee]    Script Date: 11/07/2022 8:56:48 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create proc [dbo].[deletee]
  @id int
  as
  begin
  delete from SP where Masp=@id
  end
GO
/****** Object:  StoredProcedure [dbo].[delHD]    Script Date: 11/07/2022 8:56:48 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE proc [dbo].[delHD]
  @Mahd int,
  @Hoten nvarchar(50),
  @Diachi nvarchar(50),
  @Ngaygui Date
  as
  begin
  delete from Hoadon where Mahd=@Mahd
  end
GO
/****** Object:  StoredProcedure [dbo].[delnew]    Script Date: 11/07/2022 8:56:48 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create proc [dbo].[delnew]
  @Matt int,
  @Anh nvarchar(50),
  @Tentt nvarchar(50),
  @Noidung nvarchar(50)
  as
  begin
  delete from Tintuc where Matt=@Matt
  end
GO
/****** Object:  StoredProcedure [dbo].[getallSP]    Script Date: 11/07/2022 8:56:48 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[getallSP] as
begin
Select * from SP
end
GO
/****** Object:  StoredProcedure [dbo].[getcthd]    Script Date: 11/07/2022 8:56:48 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[getcthd]
	as
	begin
	Select * from Chitiethoadon
	end
GO
/****** Object:  StoredProcedure [dbo].[getDanhmuc]    Script Date: 11/07/2022 8:56:48 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[getDanhmuc]
  as
	begin
	Select * from DanhmucSP
	end
GO
/****** Object:  StoredProcedure [dbo].[getHD]    Script Date: 11/07/2022 8:56:48 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[getHD]
	as
	begin
	Select * from Hoadon
	end
GO
/****** Object:  StoredProcedure [dbo].[getma]    Script Date: 11/07/2022 8:56:48 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[getma]
 @id int
  as
  begin
  select * from DanhmucSP where id=@id
  end
GO
/****** Object:  StoredProcedure [dbo].[getmact]    Script Date: 11/07/2022 8:56:48 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[getmact]
  @Mact int
  
  as
  begin
  select * from Chitiethoadon where Mact=@Mact
  end
GO
/****** Object:  StoredProcedure [dbo].[getmahd]    Script Date: 11/07/2022 8:56:48 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[getmahd]
  @Mahd int

  as
  begin
  select * from Hoadon where Mahd=@Mahd
  end
GO
/****** Object:  StoredProcedure [dbo].[getmanew]    Script Date: 11/07/2022 8:56:48 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[getmanew]
  @Matt int

  as
  begin
  select * from Tintuc where Matt=@Matt
  end
GO
/****** Object:  StoredProcedure [dbo].[getnew]    Script Date: 11/07/2022 8:56:48 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create proc [dbo].[getnew]
	as
	begin
	Select * from Tintuc
	end
GO
/****** Object:  StoredProcedure [dbo].[selectma]    Script Date: 11/07/2022 8:56:48 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create proc [dbo].[selectma]
  @id int
  as
  begin
  select * from SP where Masp=@id
  end
GO
/****** Object:  StoredProcedure [dbo].[updatect]    Script Date: 11/07/2022 8:56:48 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  create proc [dbo].[updatect]
  @Mact int,
  @Mahd int,
  @Masp int,
  @Soluong int
  as
  begin
  update Chitiethoadon set Mahd=@Mahd,Masp=@Masp,Soluong=@Soluong Where Mact=@Mact
  end
GO
/****** Object:  StoredProcedure [dbo].[updateD]    Script Date: 11/07/2022 8:56:48 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[updateD]
  @id int,
  @TenDm varchar(50)
  as
  begin
  update DanhmucSP set TenDm=@TenDm Where id=@id 
  end
GO
/****** Object:  StoredProcedure [dbo].[updatee]    Script Date: 11/07/2022 8:56:48 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create proc [dbo].[updatee]
  @Masp int,
    @Anh varchar(50),
  @Ten varchar(50),
  @Gia int,
  @Ban int,
  @Loai varchar(50)
  as
  begin
  update SP set Anh=@Anh, Ten=@Ten,Gia=@Gia,Ban=@Ban,Loai=@Loai Where Masp=@Masp 
  end
GO
/****** Object:  StoredProcedure [dbo].[updateHD]    Script Date: 11/07/2022 8:56:48 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[updateHD]
 @Mahd int,
  @Hoten nvarchar(50),
  @Diachi nvarchar(50),
  @Ngaygui Date
  as
  begin
  update Hoadon set Hoten=@Hoten,Diachi=@Diachi ,Ngaygui=@Ngaygui Where Mahd=@Mahd
  end
GO
/****** Object:  StoredProcedure [dbo].[updatenew]    Script Date: 11/07/2022 8:56:48 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[updatenew]
  @Matt int,
  @Anh nvarchar(50),
  @Tentt nvarchar(50),
  @Noidung nvarchar(50)
  as
  begin
  update Tintuc set Anh=@Anh,Tentt=@Tentt,Noidung=@Noidung Where Matt=@Matt
  end
GO

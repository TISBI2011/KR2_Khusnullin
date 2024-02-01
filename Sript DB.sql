USE [master]
GO
/****** Object:  Database [KR2_Khusnullin]    Script Date: 01.02.2024 17:10:15 ******/
CREATE DATABASE [KR2_Khusnullin]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KR2_Khusnullin', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.IS2011\MSSQL\DATA\KR2_Khusnullin.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'KR2_Khusnullin_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.IS2011\MSSQL\DATA\KR2_Khusnullin_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [KR2_Khusnullin] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KR2_Khusnullin].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KR2_Khusnullin] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KR2_Khusnullin] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KR2_Khusnullin] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KR2_Khusnullin] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KR2_Khusnullin] SET ARITHABORT OFF 
GO
ALTER DATABASE [KR2_Khusnullin] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KR2_Khusnullin] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KR2_Khusnullin] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KR2_Khusnullin] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KR2_Khusnullin] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KR2_Khusnullin] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KR2_Khusnullin] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KR2_Khusnullin] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KR2_Khusnullin] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KR2_Khusnullin] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KR2_Khusnullin] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KR2_Khusnullin] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KR2_Khusnullin] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KR2_Khusnullin] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KR2_Khusnullin] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KR2_Khusnullin] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KR2_Khusnullin] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KR2_Khusnullin] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KR2_Khusnullin] SET  MULTI_USER 
GO
ALTER DATABASE [KR2_Khusnullin] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KR2_Khusnullin] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KR2_Khusnullin] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KR2_Khusnullin] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [KR2_Khusnullin] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [KR2_Khusnullin] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [KR2_Khusnullin] SET QUERY_STORE = OFF
GO
USE [KR2_Khusnullin]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 01.02.2024 17:10:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[idOrder] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NULL,
	[Dateline] [date] NULL,
	[Description] [nvarchar](500) NULL,
	[Status] [bit] NULL,
	[idZakazchik] [int] NULL,
	[idOtdel] [int] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[idOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderProduct]    Script Date: 01.02.2024 17:10:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProduct](
	[idOrderProduct] [int] IDENTITY(1,1) NOT NULL,
	[idProduct] [int] NULL,
	[idOrder] [int] NULL,
 CONSTRAINT [PK_OrderProduct] PRIMARY KEY CLUSTERED 
(
	[idOrderProduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Otdel]    Script Date: 01.02.2024 17:10:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Otdel](
	[idOtdel] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Phone] [float] NULL,
 CONSTRAINT [PK_Otdel] PRIMARY KEY CLUSTERED 
(
	[idOtdel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 01.02.2024 17:10:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[idProduct] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Price] [float] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[idProduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sotrudnik]    Script Date: 01.02.2024 17:10:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sotrudnik](
	[idSotrudnik] [int] IDENTITY(1,1) NOT NULL,
	[FIO] [nvarchar](50) NULL,
	[Addres] [nvarchar](150) NULL,
	[Phone] [float] NULL,
	[Pasport] [float] NULL,
	[idOtdel] [int] NULL,
	[idStaff] [int] NULL,
	[Login] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_Sotrudnik] PRIMARY KEY CLUSTERED 
(
	[idSotrudnik] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 01.02.2024 17:10:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[idStaff] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[idStaff] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Zakazchik]    Script Date: 01.02.2024 17:10:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zakazchik](
	[idZakazchik] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Addres] [nvarchar](50) NULL,
	[Phone] [float] NULL,
 CONSTRAINT [PK_Zakazchik] PRIMARY KEY CLUSTERED 
(
	[idZakazchik] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([idOrder], [Date], [Dateline], [Description], [Status], [idZakazchik], [idOtdel]) VALUES (1, CAST(N'2023-09-22' AS Date), CAST(N'2024-09-30' AS Date), N'Очень хорошая заявка', 1, 1, 1)
INSERT [dbo].[Order] ([idOrder], [Date], [Dateline], [Description], [Status], [idZakazchik], [idOtdel]) VALUES (2, CAST(N'2024-01-22' AS Date), CAST(N'2024-09-26' AS Date), N'Очень плохая заявка', 0, 2, 1)
INSERT [dbo].[Order] ([idOrder], [Date], [Dateline], [Description], [Status], [idZakazchik], [idOtdel]) VALUES (3, CAST(N'2024-01-20' AS Date), CAST(N'2025-08-23' AS Date), N'Хорошечный заказик', 0, 3, 2)
INSERT [dbo].[Order] ([idOrder], [Date], [Dateline], [Description], [Status], [idZakazchik], [idOtdel]) VALUES (4, CAST(N'2024-01-23' AS Date), CAST(N'2024-03-24' AS Date), N'Плохой заказ', 1, 1, 3)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderProduct] ON 

INSERT [dbo].[OrderProduct] ([idOrderProduct], [idProduct], [idOrder]) VALUES (1, 1, 2)
INSERT [dbo].[OrderProduct] ([idOrderProduct], [idProduct], [idOrder]) VALUES (2, 3, 2)
INSERT [dbo].[OrderProduct] ([idOrderProduct], [idProduct], [idOrder]) VALUES (3, 2, 3)
INSERT [dbo].[OrderProduct] ([idOrderProduct], [idProduct], [idOrder]) VALUES (4, 2, 1)
INSERT [dbo].[OrderProduct] ([idOrderProduct], [idProduct], [idOrder]) VALUES (5, 2, 3)
SET IDENTITY_INSERT [dbo].[OrderProduct] OFF
GO
SET IDENTITY_INSERT [dbo].[Otdel] ON 

INSERT [dbo].[Otdel] ([idOtdel], [Name], [Phone]) VALUES (1, N'Комерческий', 89276713494)
INSERT [dbo].[Otdel] ([idOtdel], [Name], [Phone]) VALUES (2, N'Програмирование', 89276535466)
INSERT [dbo].[Otdel] ([idOtdel], [Name], [Phone]) VALUES (3, N'Отделочный цэх', 89276535999)
SET IDENTITY_INSERT [dbo].[Otdel] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([idProduct], [Name], [Price]) VALUES (1, N'Туалет', 6500)
INSERT [dbo].[Product] ([idProduct], [Name], [Price]) VALUES (2, N'Телефон', 7300)
INSERT [dbo].[Product] ([idProduct], [Name], [Price]) VALUES (3, N'Телевизор', 12500)
INSERT [dbo].[Product] ([idProduct], [Name], [Price]) VALUES (4, N'Ноутбук', 30000)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Sotrudnik] ON 

INSERT [dbo].[Sotrudnik] ([idSotrudnik], [FIO], [Addres], [Phone], [Pasport], [idOtdel], [idStaff], [Login], [Password]) VALUES (1, N'Анрей Павлович Чехов', N'Лукина 52', 89274353288, 46778890, 1, 1, N'1', N'2')
INSERT [dbo].[Sotrudnik] ([idSotrudnik], [FIO], [Addres], [Phone], [Pasport], [idOtdel], [idStaff], [Login], [Password]) VALUES (2, N'Мишка Иванов', N'Тетерява 87', 89274342345, 46774290, 2, 2, N'1', N'3')
INSERT [dbo].[Sotrudnik] ([idSotrudnik], [FIO], [Addres], [Phone], [Pasport], [idOtdel], [idStaff], [Login], [Password]) VALUES (3, N'Аня Миморва', N'Тетерява 90', 89274353466, 46774243, 3, 1, N'1', N'4')
INSERT [dbo].[Sotrudnik] ([idSotrudnik], [FIO], [Addres], [Phone], [Pasport], [idOtdel], [idStaff], [Login], [Password]) VALUES (4, N'Андрей Сусанин', N'Лукина 32', 8927462378, 21331321, NULL, 1, N'5', N'6')
SET IDENTITY_INSERT [dbo].[Sotrudnik] OFF
GO
SET IDENTITY_INSERT [dbo].[Staff] ON 

INSERT [dbo].[Staff] ([idStaff], [Name]) VALUES (1, N'Программист')
INSERT [dbo].[Staff] ([idStaff], [Name]) VALUES (2, N'Глава Отдела')
SET IDENTITY_INSERT [dbo].[Staff] OFF
GO
SET IDENTITY_INSERT [dbo].[Zakazchik] ON 

INSERT [dbo].[Zakazchik] ([idZakazchik], [Name], [Addres], [Phone]) VALUES (1, N'Михаил Павлович', N'Тетерява 27', 89274353228)
INSERT [dbo].[Zakazchik] ([idZakazchik], [Name], [Addres], [Phone]) VALUES (2, N'Ростислав Никитович', N'Мамаева 2', 89278353228)
INSERT [dbo].[Zakazchik] ([idZakazchik], [Name], [Addres], [Phone]) VALUES (3, N'Пронька Михалыч', N'Матуха 77', 80000353228)
SET IDENTITY_INSERT [dbo].[Zakazchik] OFF
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Otdel] FOREIGN KEY([idOtdel])
REFERENCES [dbo].[Otdel] ([idOtdel])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Otdel]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Zakazchik] FOREIGN KEY([idZakazchik])
REFERENCES [dbo].[Zakazchik] ([idZakazchik])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Zakazchik]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderProduct_Order] FOREIGN KEY([idOrder])
REFERENCES [dbo].[Order] ([idOrder])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_OrderProduct_Order]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderProduct_Product] FOREIGN KEY([idProduct])
REFERENCES [dbo].[Product] ([idProduct])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_OrderProduct_Product]
GO
ALTER TABLE [dbo].[Sotrudnik]  WITH CHECK ADD  CONSTRAINT [FK_Sotrudnik_Otdel] FOREIGN KEY([idOtdel])
REFERENCES [dbo].[Otdel] ([idOtdel])
GO
ALTER TABLE [dbo].[Sotrudnik] CHECK CONSTRAINT [FK_Sotrudnik_Otdel]
GO
ALTER TABLE [dbo].[Sotrudnik]  WITH CHECK ADD  CONSTRAINT [FK_Sotrudnik_Staff] FOREIGN KEY([idStaff])
REFERENCES [dbo].[Staff] ([idStaff])
GO
ALTER TABLE [dbo].[Sotrudnik] CHECK CONSTRAINT [FK_Sotrudnik_Staff]
GO
USE [master]
GO
ALTER DATABASE [KR2_Khusnullin] SET  READ_WRITE 
GO

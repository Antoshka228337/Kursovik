USE [master]
GO
/****** Object:  Database [Penis]    Script Date: 25.04.2023 13:43:52 ******/
CREATE DATABASE [Penis]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Penis', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Penis.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Penis_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Penis_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Penis] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Penis].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Penis] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Penis] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Penis] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Penis] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Penis] SET ARITHABORT OFF 
GO
ALTER DATABASE [Penis] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Penis] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Penis] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Penis] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Penis] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Penis] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Penis] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Penis] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Penis] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Penis] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Penis] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Penis] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Penis] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Penis] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Penis] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Penis] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Penis] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Penis] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Penis] SET  MULTI_USER 
GO
ALTER DATABASE [Penis] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Penis] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Penis] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Penis] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Penis] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Penis] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Penis] SET QUERY_STORE = OFF
GO
USE [Penis]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 25.04.2023 13:43:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sotrudnikii]    Script Date: 25.04.2023 13:43:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sotrudnikii](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[Date] [date] NOT NULL,
	[Dolzhnost] [nvarchar](50) NOT NULL,
	[Number] [int] NOT NULL,
	[Family] [nvarchar](50) NOT NULL,
	[Adress] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Sotrudniki] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 25.04.2023 13:43:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [Title]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([Id], [Title]) VALUES (2, N'Polz')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Sotrudnikii] ON 

INSERT [dbo].[Sotrudnikii] ([Id], [FullName], [Date], [Dolzhnost], [Number], [Family], [Adress]) VALUES (1, N'Лавров Сергей Витальевич', CAST(N'2004-05-06' AS Date), N'Директор', 1729220, N'Женат, есть дети', N'Пушкина 32Б')
INSERT [dbo].[Sotrudnikii] ([Id], [FullName], [Date], [Dolzhnost], [Number], [Family], [Adress]) VALUES (2, N'Жюков Алексей П.', CAST(N'2023-04-06' AS Date), N'Фермер', 228822, N'Нету', N'Фермерская 2Б')
INSERT [dbo].[Sotrudnikii] ([Id], [FullName], [Date], [Dolzhnost], [Number], [Family], [Adress]) VALUES (4, N'Виноградов Дмитрий Михайлович', CAST(N'2023-04-08' AS Date), N'Официант', 999666, N'Женат, есть дети', N'Виноградова 228А')
INSERT [dbo].[Sotrudnikii] ([Id], [FullName], [Date], [Dolzhnost], [Number], [Family], [Adress]) VALUES (5, N'Оскретков Данил Сексович', CAST(N'2023-04-01' AS Date), N'Сексолог', 929292, N'Есть 6 жён', N'Тиманская 8Л')
INSERT [dbo].[Sotrudnikii] ([Id], [FullName], [Date], [Dolzhnost], [Number], [Family], [Adress]) VALUES (8, N'Денис Красильников', CAST(N'2023-04-03' AS Date), N'Тренер', 228555, N'Нету конечно', N'Поносовская 3А')
INSERT [dbo].[Sotrudnikii] ([Id], [FullName], [Date], [Dolzhnost], [Number], [Family], [Adress]) VALUES (10, N'Шамсулин Артём Казахов', CAST(N'2023-03-02' AS Date), N'Кассир', 666666, N'Нету', N'Петушкова 228Б')
INSERT [dbo].[Sotrudnikii] ([Id], [FullName], [Date], [Dolzhnost], [Number], [Family], [Adress]) VALUES (18, N'Картовов Кирилл Туркин', CAST(N'0001-01-01' AS Date), N'Логопед', 200030, N'Нету', N'Майдан Незалежности')
INSERT [dbo].[Sotrudnikii] ([Id], [FullName], [Date], [Dolzhnost], [Number], [Family], [Adress]) VALUES (19, N'Очкастов Данил Данилович', CAST(N'0001-01-01' AS Date), N'Моряк', 989898, N'Есть', N'Дырявова 228А')
INSERT [dbo].[Sotrudnikii] ([Id], [FullName], [Date], [Dolzhnost], [Number], [Family], [Adress]) VALUES (20, N'Мадонов Максим Андреевич', CAST(N'0001-01-01' AS Date), N'Заместитель директора', 10203, N'Есть', N'Тиманская')
SET IDENTITY_INSERT [dbo].[Sotrudnikii] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1, N'1', N'1', 1)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (3, N'2', N'2', 2)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (5, N'444', N'444', 2)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (9, N'LehaLepeha', N'228', 2)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (13, N'Максон ', N'Петух', 2)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (15, N'Danil', N'Sexy', 2)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (18, N'Gurman', N'Babuin', 2)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (19, N'Dyrachyo', N'Daubi228', 2)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (23, N'Makson', N'Lox', 2)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (25, N'777', N'777', 2)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (27, N'7676', N'7676', 2)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
USE [master]
GO
ALTER DATABASE [Penis] SET  READ_WRITE 
GO

USE [master]
GO
/****** Object:  Database [Magasine]    Script Date: 06.08.2023 20:14:43 ******/
CREATE DATABASE [Magasine]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Magasine', FILENAME = N'E:\Program Files (x86)\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Magasine.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Magasine_log', FILENAME = N'E:\Program Files (x86)\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Magasine_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Magasine] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Magasine].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Magasine] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Magasine] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Magasine] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Magasine] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Magasine] SET ARITHABORT OFF 
GO
ALTER DATABASE [Magasine] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Magasine] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Magasine] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Magasine] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Magasine] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Magasine] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Magasine] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Magasine] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Magasine] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Magasine] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Magasine] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Magasine] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Magasine] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Magasine] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Magasine] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Magasine] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Magasine] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Magasine] SET RECOVERY FULL 
GO
ALTER DATABASE [Magasine] SET  MULTI_USER 
GO
ALTER DATABASE [Magasine] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Magasine] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Magasine] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Magasine] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Magasine] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Magasine] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Magasine', N'ON'
GO
ALTER DATABASE [Magasine] SET QUERY_STORE = ON
GO
ALTER DATABASE [Magasine] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Magasine]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 06.08.2023 20:14:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[street] [nchar](25) NULL,
	[id_city] [int] NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 06.08.2023 20:14:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](25) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 06.08.2023 20:14:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](25) NULL,
	[id_region] [int] NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 06.08.2023 20:14:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](25) NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Delivery]    Script Date: 06.08.2023 20:14:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Delivery](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_product] [int] NULL,
	[id_supplier] [int] NULL,
	[price] [int] NULL,
	[quatity] [int] NULL,
	[date_of_delivery] [date] NULL,
 CONSTRAINT [PK_Delivery] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Markup]    Script Date: 06.08.2023 20:14:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Markup](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](10) NULL,
	[percent] [int] NULL,
 CONSTRAINT [PK_Markup] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Measurement]    Script Date: 06.08.2023 20:14:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Measurement](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](25) NULL,
	[description] [nchar](50) NULL,
 CONSTRAINT [PK_Measurement] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producer]    Script Date: 06.08.2023 20:14:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](25) NULL,
	[id_address] [int] NULL,
 CONSTRAINT [PK_Producer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 06.08.2023 20:14:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](25) NULL,
	[id_category] [int] NULL,
	[price] [int] NULL,
	[quatity] [int] NULL,
	[id_producer] [int] NULL,
	[id_measurement] [int] NULL,
	[id_markup] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Region]    Script Date: 06.08.2023 20:14:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Region](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](25) NULL,
	[id_country] [int] NULL,
 CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sale]    Script Date: 06.08.2023 20:14:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sale](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_product] [int] NULL,
	[price] [int] NULL,
	[quatity] [int] NULL,
	[date_of_sale] [date] NULL,
 CONSTRAINT [PK_Sale] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 06.08.2023 20:14:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](25) NULL,
	[id_address] [int] NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Address] ON 

INSERT [dbo].[Address] ([id], [street], [id_city]) VALUES (1, N'Садовая                  ', 1)
INSERT [dbo].[Address] ([id], [street], [id_city]) VALUES (2, N'Дангоса                  ', 2)
INSERT [dbo].[Address] ([id], [street], [id_city]) VALUES (3, N'Долгого                  ', 3)
INSERT [dbo].[Address] ([id], [street], [id_city]) VALUES (4, N'Ванитаса                 ', 4)
INSERT [dbo].[Address] ([id], [street], [id_city]) VALUES (5, N'Нута                     ', 5)
INSERT [dbo].[Address] ([id], [street], [id_city]) VALUES (6, N'Аграрная                 ', NULL)
INSERT [dbo].[Address] ([id], [street], [id_city]) VALUES (7, N'Академика Вильямса       ', NULL)
INSERT [dbo].[Address] ([id], [street], [id_city]) VALUES (8, N'Байкал                   ', NULL)
INSERT [dbo].[Address] ([id], [street], [id_city]) VALUES (9, N'Балка                    ', NULL)
INSERT [dbo].[Address] ([id], [street], [id_city]) VALUES (10, N'Банный                   ', NULL)
INSERT [dbo].[Address] ([id], [street], [id_city]) VALUES (11, N'Баумана                  ', NULL)
INSERT [dbo].[Address] ([id], [street], [id_city]) VALUES (12, N'Вазова                   ', NULL)
INSERT [dbo].[Address] ([id], [street], [id_city]) VALUES (13, N'Василия                  ', NULL)
INSERT [dbo].[Address] ([id], [street], [id_city]) VALUES (14, N'Венгера                  ', NULL)
INSERT [dbo].[Address] ([id], [street], [id_city]) VALUES (15, N'Гагарина                 ', NULL)
INSERT [dbo].[Address] ([id], [street], [id_city]) VALUES (16, N'Гвардейская              ', NULL)
INSERT [dbo].[Address] ([id], [street], [id_city]) VALUES (17, N'Гастелло                 ', NULL)
INSERT [dbo].[Address] ([id], [street], [id_city]) VALUES (18, N'Гвоздичный               ', NULL)
SET IDENTITY_INSERT [dbo].[Address] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([id], [name]) VALUES (1, N'Техника                  ')
INSERT [dbo].[Category] ([id], [name]) VALUES (2, N'Овощи                    ')
INSERT [dbo].[Category] ([id], [name]) VALUES (3, N'Одежда                   ')
INSERT [dbo].[Category] ([id], [name]) VALUES (4, N'Мебель                   ')
INSERT [dbo].[Category] ([id], [name]) VALUES (5, N'Посуда                   ')
INSERT [dbo].[Category] ([id], [name]) VALUES (6, N'Стройматериалі           ')
INSERT [dbo].[Category] ([id], [name]) VALUES (1006, N'Детские                  ')
INSERT [dbo].[Category] ([id], [name]) VALUES (1007, N'Школа                    ')
INSERT [dbo].[Category] ([id], [name]) VALUES (1008, N'Офис                     ')
INSERT [dbo].[Category] ([id], [name]) VALUES (1009, N'Книги                    ')
INSERT [dbo].[Category] ([id], [name]) VALUES (1010, N'Алкоголь                 ')
INSERT [dbo].[Category] ([id], [name]) VALUES (1011, N'Газировка                ')
INSERT [dbo].[Category] ([id], [name]) VALUES (1012, N'Инструменті              ')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[City] ON 

INSERT [dbo].[City] ([id], [name], [id_region]) VALUES (1, N'Харьков                  ', 1)
INSERT [dbo].[City] ([id], [name], [id_region]) VALUES (2, N'Одесса                   ', 2)
INSERT [dbo].[City] ([id], [name], [id_region]) VALUES (3, N'Днепр                    ', 3)
INSERT [dbo].[City] ([id], [name], [id_region]) VALUES (4, N'Киев                     ', 4)
INSERT [dbo].[City] ([id], [name], [id_region]) VALUES (5, N'Житомир                  ', 5)
INSERT [dbo].[City] ([id], [name], [id_region]) VALUES (6, N'Запорожье                ', 3)
INSERT [dbo].[City] ([id], [name], [id_region]) VALUES (7, N'Николаев                 ', 5)
INSERT [dbo].[City] ([id], [name], [id_region]) VALUES (8, N'Винница                  ', 2)
INSERT [dbo].[City] ([id], [name], [id_region]) VALUES (9, N'Херсон                   ', 4)
INSERT [dbo].[City] ([id], [name], [id_region]) VALUES (10, N'Симферополь              ', 1)
INSERT [dbo].[City] ([id], [name], [id_region]) VALUES (11, N'Житомир                  ', 4)
INSERT [dbo].[City] ([id], [name], [id_region]) VALUES (12, N'Сумы                     ', 1)
INSERT [dbo].[City] ([id], [name], [id_region]) VALUES (13, N'Житомир                  ', 2)
SET IDENTITY_INSERT [dbo].[City] OFF
GO
SET IDENTITY_INSERT [dbo].[Country] ON 

INSERT [dbo].[Country] ([id], [name]) VALUES (1, N'Украина                  ')
INSERT [dbo].[Country] ([id], [name]) VALUES (2, N'Грузия                   ')
INSERT [dbo].[Country] ([id], [name]) VALUES (3, N'Франция                  ')
INSERT [dbo].[Country] ([id], [name]) VALUES (4, N'США                      ')
INSERT [dbo].[Country] ([id], [name]) VALUES (5, N'Австралия                ')
INSERT [dbo].[Country] ([id], [name]) VALUES (6, N'Алжир                    ')
INSERT [dbo].[Country] ([id], [name]) VALUES (7, N'Ангола                   ')
INSERT [dbo].[Country] ([id], [name]) VALUES (8, N'Андорра                  ')
INSERT [dbo].[Country] ([id], [name]) VALUES (9, N'Армения                  ')
INSERT [dbo].[Country] ([id], [name]) VALUES (10, N'Бахрейн                  ')
INSERT [dbo].[Country] ([id], [name]) VALUES (11, N'Бенин                    ')
INSERT [dbo].[Country] ([id], [name]) VALUES (12, N'	Болгария                ')
INSERT [dbo].[Country] ([id], [name]) VALUES (13, N'Боливия                  ')
INSERT [dbo].[Country] ([id], [name]) VALUES (14, N'Индонезия                ')
INSERT [dbo].[Country] ([id], [name]) VALUES (15, N'Испания                  ')
INSERT [dbo].[Country] ([id], [name]) VALUES (16, N'Йемен                    ')
INSERT [dbo].[Country] ([id], [name]) VALUES (17, N'Китай                    ')
SET IDENTITY_INSERT [dbo].[Country] OFF
GO
SET IDENTITY_INSERT [dbo].[Delivery] ON 

INSERT [dbo].[Delivery] ([id], [id_product], [id_supplier], [price], [quatity], [date_of_delivery]) VALUES (1, 1, 1, 34, 50, CAST(N'2023-07-23' AS Date))
INSERT [dbo].[Delivery] ([id], [id_product], [id_supplier], [price], [quatity], [date_of_delivery]) VALUES (2, 5, 4, 23, 40, CAST(N'2023-07-01' AS Date))
INSERT [dbo].[Delivery] ([id], [id_product], [id_supplier], [price], [quatity], [date_of_delivery]) VALUES (3, 13, 2, 150000, 1, CAST(N'2022-05-12' AS Date))
INSERT [dbo].[Delivery] ([id], [id_product], [id_supplier], [price], [quatity], [date_of_delivery]) VALUES (4, 2, 5, 9999, 5, CAST(N'2023-03-01' AS Date))
INSERT [dbo].[Delivery] ([id], [id_product], [id_supplier], [price], [quatity], [date_of_delivery]) VALUES (5, 5, 3, 5000, 2, CAST(N'2023-07-25' AS Date))
INSERT [dbo].[Delivery] ([id], [id_product], [id_supplier], [price], [quatity], [date_of_delivery]) VALUES (6, 8, 10, 657, 10, CAST(N'2023-07-25' AS Date))
INSERT [dbo].[Delivery] ([id], [id_product], [id_supplier], [price], [quatity], [date_of_delivery]) VALUES (8, 16, 13, 2123, 235, CAST(N'2023-03-01' AS Date))
INSERT [dbo].[Delivery] ([id], [id_product], [id_supplier], [price], [quatity], [date_of_delivery]) VALUES (10, 15, 8, 548, 23, CAST(N'2023-07-01' AS Date))
INSERT [dbo].[Delivery] ([id], [id_product], [id_supplier], [price], [quatity], [date_of_delivery]) VALUES (11, 12, 9, 123, 54, CAST(N'2023-07-01' AS Date))
INSERT [dbo].[Delivery] ([id], [id_product], [id_supplier], [price], [quatity], [date_of_delivery]) VALUES (12, 3, 1, 768, 81, CAST(N'2023-07-01' AS Date))
INSERT [dbo].[Delivery] ([id], [id_product], [id_supplier], [price], [quatity], [date_of_delivery]) VALUES (13, 10, 5, 123, 23, CAST(N'2023-07-01' AS Date))
SET IDENTITY_INSERT [dbo].[Delivery] OFF
GO
SET IDENTITY_INSERT [dbo].[Markup] ON 

INSERT [dbo].[Markup] ([id], [name], [percent]) VALUES (1, NULL, 20)
INSERT [dbo].[Markup] ([id], [name], [percent]) VALUES (2, NULL, 10)
INSERT [dbo].[Markup] ([id], [name], [percent]) VALUES (3, NULL, 5)
INSERT [dbo].[Markup] ([id], [name], [percent]) VALUES (4, NULL, 30)
INSERT [dbo].[Markup] ([id], [name], [percent]) VALUES (5, NULL, 40)
INSERT [dbo].[Markup] ([id], [name], [percent]) VALUES (6, NULL, 50)
INSERT [dbo].[Markup] ([id], [name], [percent]) VALUES (7, NULL, 0)
INSERT [dbo].[Markup] ([id], [name], [percent]) VALUES (8, NULL, 25)
INSERT [dbo].[Markup] ([id], [name], [percent]) VALUES (9, NULL, 55)
SET IDENTITY_INSERT [dbo].[Markup] OFF
GO
SET IDENTITY_INSERT [dbo].[Measurement] ON 

INSERT [dbo].[Measurement] ([id], [name], [description]) VALUES (1, N'кг                       ', N'Единица измерения                                 ')
INSERT [dbo].[Measurement] ([id], [name], [description]) VALUES (2, N'пачки                    ', N'В пачках                                          ')
INSERT [dbo].[Measurement] ([id], [name], [description]) VALUES (3, N'коробки                  ', N'В коробках                                        ')
INSERT [dbo].[Measurement] ([id], [name], [description]) VALUES (4, N'бочки                    ', N'В бочках                                          ')
INSERT [dbo].[Measurement] ([id], [name], [description]) VALUES (5, N'бутылки                  ', N'В бутылках                                        ')
INSERT [dbo].[Measurement] ([id], [name], [description]) VALUES (6, N'штука                    ', N'Одна единица товара                               ')
SET IDENTITY_INSERT [dbo].[Measurement] OFF
GO
SET IDENTITY_INSERT [dbo].[Producer] ON 

INSERT [dbo].[Producer] ([id], [name], [id_address]) VALUES (1, N'Рент                     ', 1)
INSERT [dbo].[Producer] ([id], [name], [id_address]) VALUES (2, N'Флинт                    ', 4)
INSERT [dbo].[Producer] ([id], [name], [id_address]) VALUES (3, N'Грант                    ', 3)
INSERT [dbo].[Producer] ([id], [name], [id_address]) VALUES (4, N'Пронт                    ', 2)
INSERT [dbo].[Producer] ([id], [name], [id_address]) VALUES (5, N'Авент                    ', 5)
SET IDENTITY_INSERT [dbo].[Producer] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [name], [id_category], [price], [quatity], [id_producer], [id_measurement], [id_markup]) VALUES (1, N'Картошка                 ', 2, 34, 50, 1, 1, 3)
INSERT [dbo].[Product] ([id], [name], [id_category], [price], [quatity], [id_producer], [id_measurement], [id_markup]) VALUES (2, N'Морква                   ', 2, 23, 40, 2, 1, 3)
INSERT [dbo].[Product] ([id], [name], [id_category], [price], [quatity], [id_producer], [id_measurement], [id_markup]) VALUES (3, N'Ноутбук                  ', 1, 150000, 1, 3, 6, 7)
INSERT [dbo].[Product] ([id], [name], [id_category], [price], [quatity], [id_producer], [id_measurement], [id_markup]) VALUES (4, N'Телефон                  ', 1, 9999, 5, 4, 6, 7)
INSERT [dbo].[Product] ([id], [name], [id_category], [price], [quatity], [id_producer], [id_measurement], [id_markup]) VALUES (5, N'Принтер                  ', 1, 5000, 2, 5, 6, 7)
INSERT [dbo].[Product] ([id], [name], [id_category], [price], [quatity], [id_producer], [id_measurement], [id_markup]) VALUES (6, N'Чеснок                   ', 2, 34, 23, 2, 2, 1)
INSERT [dbo].[Product] ([id], [name], [id_category], [price], [quatity], [id_producer], [id_measurement], [id_markup]) VALUES (7, N'Броколи                  ', 2, 65, 43, 3, 5, 2)
INSERT [dbo].[Product] ([id], [name], [id_category], [price], [quatity], [id_producer], [id_measurement], [id_markup]) VALUES (8, N'Помидор                  ', 2, 34, 43, 4, 3, 4)
INSERT [dbo].[Product] ([id], [name], [id_category], [price], [quatity], [id_producer], [id_measurement], [id_markup]) VALUES (9, N'Кобачки                  ', 2, 22, 23, 5, 1, 5)
INSERT [dbo].[Product] ([id], [name], [id_category], [price], [quatity], [id_producer], [id_measurement], [id_markup]) VALUES (10, N'Цибуля                   ', 2, 35, 76, 1, 5, 6)
INSERT [dbo].[Product] ([id], [name], [id_category], [price], [quatity], [id_producer], [id_measurement], [id_markup]) VALUES (11, N'Огурци                   ', 2, 23, 45, 4, 4, 1)
INSERT [dbo].[Product] ([id], [name], [id_category], [price], [quatity], [id_producer], [id_measurement], [id_markup]) VALUES (12, N'Нут                      ', 2, 46, 45, 4, 3, 3)
INSERT [dbo].[Product] ([id], [name], [id_category], [price], [quatity], [id_producer], [id_measurement], [id_markup]) VALUES (13, N'Перец                    ', 2, 12, 45, 4, 5, 5)
INSERT [dbo].[Product] ([id], [name], [id_category], [price], [quatity], [id_producer], [id_measurement], [id_markup]) VALUES (14, N'Редис                    ', 2, 34, 45, 4, 2, 6)
INSERT [dbo].[Product] ([id], [name], [id_category], [price], [quatity], [id_producer], [id_measurement], [id_markup]) VALUES (15, N'Ревень                   ', 2, 12, 45, 4, 1, 3)
INSERT [dbo].[Product] ([id], [name], [id_category], [price], [quatity], [id_producer], [id_measurement], [id_markup]) VALUES (16, N'Пак-чой                  ', 2, 43, 45, 4, 6, 2)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Region] ON 

INSERT [dbo].[Region] ([id], [name], [id_country]) VALUES (1, N'Приморский               ', 1)
INSERT [dbo].[Region] ([id], [name], [id_country]) VALUES (2, N'Киевский                 ', 1)
INSERT [dbo].[Region] ([id], [name], [id_country]) VALUES (3, N'Печерский                ', 1)
INSERT [dbo].[Region] ([id], [name], [id_country]) VALUES (4, N'Соломенский              ', 1)
INSERT [dbo].[Region] ([id], [name], [id_country]) VALUES (5, N'Королевский              ', 1)
SET IDENTITY_INSERT [dbo].[Region] OFF
GO
SET IDENTITY_INSERT [dbo].[Sale] ON 

INSERT [dbo].[Sale] ([id], [id_product], [price], [quatity], [date_of_sale]) VALUES (1, 1, 34, 50, NULL)
INSERT [dbo].[Sale] ([id], [id_product], [price], [quatity], [date_of_sale]) VALUES (2, 3, 23, 40, NULL)
INSERT [dbo].[Sale] ([id], [id_product], [price], [quatity], [date_of_sale]) VALUES (3, 2, 150000, 1, NULL)
INSERT [dbo].[Sale] ([id], [id_product], [price], [quatity], [date_of_sale]) VALUES (4, 4, 9999, 5, NULL)
INSERT [dbo].[Sale] ([id], [id_product], [price], [quatity], [date_of_sale]) VALUES (5, 5, 5000, 2, NULL)
INSERT [dbo].[Sale] ([id], [id_product], [price], [quatity], [date_of_sale]) VALUES (6, 6, 23, 103, NULL)
INSERT [dbo].[Sale] ([id], [id_product], [price], [quatity], [date_of_sale]) VALUES (7, 7, 43, 23, NULL)
INSERT [dbo].[Sale] ([id], [id_product], [price], [quatity], [date_of_sale]) VALUES (8, 8, 54, 4, NULL)
INSERT [dbo].[Sale] ([id], [id_product], [price], [quatity], [date_of_sale]) VALUES (9, 9, 32, 65, NULL)
INSERT [dbo].[Sale] ([id], [id_product], [price], [quatity], [date_of_sale]) VALUES (10, 10, 51, 864, NULL)
INSERT [dbo].[Sale] ([id], [id_product], [price], [quatity], [date_of_sale]) VALUES (11, 11, 16, 123, NULL)
INSERT [dbo].[Sale] ([id], [id_product], [price], [quatity], [date_of_sale]) VALUES (12, 12, 12, 462, NULL)
INSERT [dbo].[Sale] ([id], [id_product], [price], [quatity], [date_of_sale]) VALUES (13, 13, 57, 12, NULL)
INSERT [dbo].[Sale] ([id], [id_product], [price], [quatity], [date_of_sale]) VALUES (14, 14, 85, 54, NULL)
INSERT [dbo].[Sale] ([id], [id_product], [price], [quatity], [date_of_sale]) VALUES (15, 15, 93, 76, NULL)
INSERT [dbo].[Sale] ([id], [id_product], [price], [quatity], [date_of_sale]) VALUES (16, 16, 45, 123, NULL)
SET IDENTITY_INSERT [dbo].[Sale] OFF
GO
SET IDENTITY_INSERT [dbo].[Supplier] ON 

INSERT [dbo].[Supplier] ([id], [name], [id_address]) VALUES (1, N'Terra                    ', 1)
INSERT [dbo].[Supplier] ([id], [name], [id_address]) VALUES (2, N'Grinterr                 ', 3)
INSERT [dbo].[Supplier] ([id], [name], [id_address]) VALUES (3, N'Vantes                   ', 2)
INSERT [dbo].[Supplier] ([id], [name], [id_address]) VALUES (4, N'Huka                     ', 4)
INSERT [dbo].[Supplier] ([id], [name], [id_address]) VALUES (5, N'Ginta                    ', 5)
INSERT [dbo].[Supplier] ([id], [name], [id_address]) VALUES (6, N'Рудеф                    ', 6)
INSERT [dbo].[Supplier] ([id], [name], [id_address]) VALUES (7, N'Barni                    ', 7)
INSERT [dbo].[Supplier] ([id], [name], [id_address]) VALUES (8, N'Hita                     ', 8)
INSERT [dbo].[Supplier] ([id], [name], [id_address]) VALUES (9, N'Fibi                     ', 9)
INSERT [dbo].[Supplier] ([id], [name], [id_address]) VALUES (10, N'Roshen                   ', 10)
INSERT [dbo].[Supplier] ([id], [name], [id_address]) VALUES (11, N'KiYont                   ', 11)
INSERT [dbo].[Supplier] ([id], [name], [id_address]) VALUES (12, N'Trid                     ', 12)
INSERT [dbo].[Supplier] ([id], [name], [id_address]) VALUES (13, N'Nirea                    ', 13)
SET IDENTITY_INSERT [dbo].[Supplier] OFF
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_City] FOREIGN KEY([id_city])
REFERENCES [dbo].[City] ([id])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_City]
GO
ALTER TABLE [dbo].[City]  WITH CHECK ADD  CONSTRAINT [FK_City_Region] FOREIGN KEY([id_region])
REFERENCES [dbo].[Region] ([id])
GO
ALTER TABLE [dbo].[City] CHECK CONSTRAINT [FK_City_Region]
GO
ALTER TABLE [dbo].[Delivery]  WITH CHECK ADD  CONSTRAINT [FK_Delivery_Product] FOREIGN KEY([id_product])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[Delivery] CHECK CONSTRAINT [FK_Delivery_Product]
GO
ALTER TABLE [dbo].[Delivery]  WITH CHECK ADD  CONSTRAINT [FK_Delivery_Supplier] FOREIGN KEY([id_supplier])
REFERENCES [dbo].[Supplier] ([id])
GO
ALTER TABLE [dbo].[Delivery] CHECK CONSTRAINT [FK_Delivery_Supplier]
GO
ALTER TABLE [dbo].[Producer]  WITH CHECK ADD  CONSTRAINT [FK_Producer_Address] FOREIGN KEY([id_address])
REFERENCES [dbo].[Address] ([id])
GO
ALTER TABLE [dbo].[Producer] CHECK CONSTRAINT [FK_Producer_Address]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([id_category])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Markup] FOREIGN KEY([id_markup])
REFERENCES [dbo].[Markup] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Markup]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Measurement] FOREIGN KEY([id_measurement])
REFERENCES [dbo].[Measurement] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Measurement]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Producer] FOREIGN KEY([id_producer])
REFERENCES [dbo].[Producer] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Producer]
GO
ALTER TABLE [dbo].[Region]  WITH CHECK ADD  CONSTRAINT [FK_Region_Country] FOREIGN KEY([id_country])
REFERENCES [dbo].[Country] ([id])
GO
ALTER TABLE [dbo].[Region] CHECK CONSTRAINT [FK_Region_Country]
GO
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD  CONSTRAINT [FK_Sale_Product] FOREIGN KEY([id_product])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[Sale] CHECK CONSTRAINT [FK_Sale_Product]
GO
ALTER TABLE [dbo].[Supplier]  WITH CHECK ADD  CONSTRAINT [FK_Supplier_Address] FOREIGN KEY([id_address])
REFERENCES [dbo].[Address] ([id])
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [FK_Supplier_Address]
GO
USE [master]
GO
ALTER DATABASE [Magasine] SET  READ_WRITE 
GO

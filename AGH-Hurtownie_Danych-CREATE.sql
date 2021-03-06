USE [master]
GO
/****** Object:  Database [AGH-Hurtownie_Danych]    Script Date: 24.03.2017 00:19:26 ******/
CREATE DATABASE [AGH-Hurtownie_Danych]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AGH-Hurtownie_Danych', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\AGH-Hurtownie_Danych.mdf' , SIZE = 9216KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'AGH-Hurtownie_Danych_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\AGH-Hurtownie_Danych_log.ldf' , SIZE = 1280KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [AGH-Hurtownie_Danych] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AGH-Hurtownie_Danych].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AGH-Hurtownie_Danych] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AGH-Hurtownie_Danych] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AGH-Hurtownie_Danych] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AGH-Hurtownie_Danych] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AGH-Hurtownie_Danych] SET ARITHABORT OFF 
GO
ALTER DATABASE [AGH-Hurtownie_Danych] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AGH-Hurtownie_Danych] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AGH-Hurtownie_Danych] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AGH-Hurtownie_Danych] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AGH-Hurtownie_Danych] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AGH-Hurtownie_Danych] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AGH-Hurtownie_Danych] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AGH-Hurtownie_Danych] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AGH-Hurtownie_Danych] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AGH-Hurtownie_Danych] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AGH-Hurtownie_Danych] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AGH-Hurtownie_Danych] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AGH-Hurtownie_Danych] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AGH-Hurtownie_Danych] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AGH-Hurtownie_Danych] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AGH-Hurtownie_Danych] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AGH-Hurtownie_Danych] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AGH-Hurtownie_Danych] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AGH-Hurtownie_Danych] SET  MULTI_USER 
GO
ALTER DATABASE [AGH-Hurtownie_Danych] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AGH-Hurtownie_Danych] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AGH-Hurtownie_Danych] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AGH-Hurtownie_Danych] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [AGH-Hurtownie_Danych] SET DELAYED_DURABILITY = DISABLED 
GO
USE [AGH-Hurtownie_Danych]
GO
/****** Object:  Table [dbo].[Adres odbiorcy]    Script Date: 24.03.2017 00:19:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adres odbiorcy](
	[_id] [int] IDENTITY(1,1) NOT NULL,
	[Kraj] [varchar](255) NULL,
	[Region] [varchar](255) NULL,
	[Miasto] [varchar](255) NULL,
	[Odbiorca] [varchar](255) NULL,
 CONSTRAINT [PK_Adres odbiorcy] PRIMARY KEY CLUSTERED 
(
	[_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Data zamowienia]    Script Date: 24.03.2017 00:19:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Data zamowienia](
	[_id] [int] IDENTITY(1,1) NOT NULL,
	[Rok] [int] NULL,
	[Kwartal] [int] NULL,
	[Miesiac] [int] NULL,
	[Dzien] [int] NULL,
 CONSTRAINT [PK_Data zamowienia2] PRIMARY KEY CLUSTERED 
(
	[_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Produkty]    Script Date: 24.03.2017 00:19:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produkty](
	[_id] [int] IDENTITY(1,1) NOT NULL,
	[Produkt] [varchar](255) NULL,
	[Kategoria] [varchar](255) NULL,
 CONSTRAINT [PK_Produkty] PRIMARY KEY CLUSTERED 
(
	[_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Spedytorzy]    Script Date: 24.03.2017 00:19:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Spedytorzy](
	[ID spedytora] [int] NOT NULL,
	[Nazwa firmy] [varchar](255) NULL,
	[Telefon] [varchar](25) NULL,
 CONSTRAINT [PK_Spedytorzy2] PRIMARY KEY CLUSTERED 
(
	[ID spedytora] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Zamowienia]    Script Date: 24.03.2017 00:19:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zamowienia](
	[Row ID] [int] NULL,
	[Order ID] [int] NULL,
	[Order Date] [date] NULL,
	[Order Priority] [varchar](255) NULL,
	[Order Quantity] [int] NULL,
	[Sales] [numeric](10, 2) NULL,
	[Discount] [numeric](10, 2) NULL,
	[Ship Mode] [varchar](255) NULL,
	[Profit] [numeric](18, 2) NULL,
	[Unit Price] [numeric](18, 2) NULL,
	[Shipping Cost] [numeric](18, 2) NULL,
	[Customer Name] [varchar](255) NULL,
	[Province] [varchar](255) NULL,
	[Region] [varchar](255) NULL,
	[Customer Segment] [varchar](255) NULL,
	[Product Category] [varchar](255) NULL,
	[Product Sub-Category] [varchar](255) NULL,
	[Product Container] [varchar](255) NULL,
	[Product Base Margin] [numeric](5, 2) NULL,
	[Product Name] [varchar](255) NULL,
	[Ship Date] [date] NULL
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [AGH-Hurtownie_Danych] SET  READ_WRITE 
GO

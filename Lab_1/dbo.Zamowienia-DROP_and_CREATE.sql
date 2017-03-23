USE [AGH-Hurtownie_Danych]
GO

/****** Object:  Table [dbo].[Zamowienia]    Script Date: 23.03.2017 21:36:05 ******/
IF OBJECT_ID('[dbo].[Zamowienia]') IS NOT NULL
DROP TABLE [dbo].[Zamowienia]
GO

/****** Object:  Table [dbo].[Zamowienia]    Script Date: 23.03.2017 21:36:05 ******/
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


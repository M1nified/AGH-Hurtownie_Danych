CREATE TABLE [dbo].[Zamowienia] (
    [Row ID]               INT             NULL,
    [Order ID]             INT             NULL,
    [Order Date]           DATE            NULL,
    [Order Priority]       VARCHAR (255)   NULL,
    [Order Quantity]       INT             NULL,
    [Sales]                NUMERIC (10, 2) NULL,
    [Discount]             NUMERIC (10, 2) NULL,
    [Ship Mode]            VARCHAR (255)   NULL,
    [Profit]               NUMERIC (18, 2) NULL,
    [Unit Price]           NUMERIC (18, 2) NULL,
    [Shipping Cost]        NUMERIC (18, 2) NULL,
    [Customer Name]        VARCHAR (255)   NULL,
    [Province]             VARCHAR (255)   NULL,
    [Region]               VARCHAR (255)   NULL,
    [Customer Segment]     VARCHAR (255)   NULL,
    [Product Category]     VARCHAR (255)   NULL,
    [Product Sub-Category] VARCHAR (255)   NULL,
    [Product Container]    VARCHAR (255)   NULL,
    [Product Base Margin]  NUMERIC (5, 2)  NULL,
    [Product Name]         VARCHAR (255)   NULL,
    [Ship Date]            DATE            NULL
);


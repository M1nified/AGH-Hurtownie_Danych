CREATE TABLE [dbo].[DimProduct] (
    [ProductKey]        INT           IDENTITY (1, 1) NOT NULL,
    [ProductAltKey]     VARCHAR (10)  NOT NULL,
    [ProductName]       VARCHAR (100) NULL,
    [ProductActualCost] MONEY         NULL,
    [ProductSalesCost]  MONEY         NULL,
    PRIMARY KEY CLUSTERED ([ProductKey] ASC)
);


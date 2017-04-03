CREATE TABLE [dbo].[FactProductSales] (
    [TransactionId]      BIGINT     IDENTITY (1, 1) NOT NULL,
    [SalesInvoiceNumber] INT        NOT NULL,
    [SalesDateKey]       INT        NULL,
    [SalesTimeKey]       INT        NULL,
    [SalesTimeAltKey]    INT        NULL,
    [StoreID]            INT        NOT NULL,
    [CustomerID]         INT        NOT NULL,
    [ProductID]          INT        NOT NULL,
    [SalesPersonID]      INT        NOT NULL,
    [Quantity]           FLOAT (53) NULL,
    [SalesTotalCost]     MONEY      NULL,
    [ProductActualCost]  MONEY      NULL,
    [Deviation]          FLOAT (53) NULL,
    PRIMARY KEY CLUSTERED ([TransactionId] ASC),
    CONSTRAINT [FK_CustomerID] FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[DimCustomer] ([CustomerID]),
    CONSTRAINT [FK_ProductKey] FOREIGN KEY ([ProductID]) REFERENCES [dbo].[DimProduct] ([ProductKey]),
    CONSTRAINT [FK_SalesDateKey] FOREIGN KEY ([SalesDateKey]) REFERENCES [dbo].[DimDate] ([DateKey]),
    CONSTRAINT [FK_SalesPersonID] FOREIGN KEY ([SalesPersonID]) REFERENCES [dbo].[DimSalesPerson] ([SalesPersonID]),
    CONSTRAINT [FK_SalesTimeKey] FOREIGN KEY ([SalesTimeKey]) REFERENCES [dbo].[DimTime] ([TimeKey]),
    CONSTRAINT [FK_StoreID] FOREIGN KEY ([StoreID]) REFERENCES [dbo].[DimStores] ([StoreID])
);


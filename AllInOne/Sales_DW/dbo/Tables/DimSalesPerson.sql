CREATE TABLE [dbo].[DimSalesPerson] (
    [SalesPersonID]    INT           IDENTITY (1, 1) NOT NULL,
    [SalesPersonAltID] VARCHAR (10)  NOT NULL,
    [SalesPersonName]  VARCHAR (100) NULL,
    [StoreID]          INT           NULL,
    [City]             VARCHAR (100) NULL,
    [State]            VARCHAR (100) NULL,
    [Country]          VARCHAR (100) NULL,
    PRIMARY KEY CLUSTERED ([SalesPersonID] ASC)
);


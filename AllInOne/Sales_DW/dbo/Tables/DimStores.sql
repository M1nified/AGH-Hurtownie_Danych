CREATE TABLE [dbo].[DimStores] (
    [StoreID]       INT           IDENTITY (1, 1) NOT NULL,
    [StoreAltID]    VARCHAR (10)  NOT NULL,
    [StoreName]     VARCHAR (100) NULL,
    [StoreLocation] VARCHAR (100) NULL,
    [City]          VARCHAR (100) NULL,
    [State]         VARCHAR (100) NULL,
    [Country]       VARCHAR (100) NULL,
    PRIMARY KEY CLUSTERED ([StoreID] ASC)
);


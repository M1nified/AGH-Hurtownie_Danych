CREATE TABLE [dbo].[DimCustomer] (
    [CustomerID]    INT          IDENTITY (1, 1) NOT NULL,
    [CustomerAltID] VARCHAR (10) NOT NULL,
    [CustomerName]  VARCHAR (50) NULL,
    [Gender]        VARCHAR (20) NULL,
    PRIMARY KEY CLUSTERED ([CustomerID] ASC)
);


CREATE TABLE [dbo].[Produkty] (
    [_id]       INT           IDENTITY (1, 1) NOT NULL,
    [Produkt]   VARCHAR (255) NULL,
    [Kategoria] VARCHAR (255) NULL,
    CONSTRAINT [PK_Produkty] PRIMARY KEY CLUSTERED ([_id] ASC)
);


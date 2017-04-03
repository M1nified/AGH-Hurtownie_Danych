CREATE TABLE [dbo].[Adres odbiorcy] (
    [_id]      INT           IDENTITY (1, 1) NOT NULL,
    [Kraj]     VARCHAR (255) NULL,
    [Region]   VARCHAR (255) NULL,
    [Miasto]   VARCHAR (255) NULL,
    [Odbiorca] VARCHAR (255) NULL,
    CONSTRAINT [PK_Adres odbiorcy] PRIMARY KEY CLUSTERED ([_id] ASC)
);


CREATE TABLE [dbo].[Data zamowienia] (
    [_id]     INT IDENTITY (1, 1) NOT NULL,
    [Rok]     INT NULL,
    [Kwartal] INT NULL,
    [Miesiac] INT NULL,
    [Dzien]   INT NULL,
    CONSTRAINT [PK_Data zamowienia2] PRIMARY KEY CLUSTERED ([_id] ASC)
);


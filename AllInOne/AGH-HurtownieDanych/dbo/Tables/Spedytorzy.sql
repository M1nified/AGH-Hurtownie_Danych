CREATE TABLE [dbo].[Spedytorzy] (
    [ID spedytora] INT           NOT NULL,
    [Nazwa firmy]  VARCHAR (255) NULL,
    [Telefon]      VARCHAR (25)  NULL,
    CONSTRAINT [PK_Spedytorzy2] PRIMARY KEY CLUSTERED ([ID spedytora] ASC)
);


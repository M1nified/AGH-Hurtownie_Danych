CREATE TABLE [dbo].[DimTime] (
    [TimeKey]               INT           NOT NULL,
    [TimeAltKey]            INT           NOT NULL,
    [Time30]                VARCHAR (8)   NOT NULL,
    [Hour30]                TINYINT       NOT NULL,
    [MinuteNumber]          TINYINT       NOT NULL,
    [SecondNumber]          TINYINT       NOT NULL,
    [TimeInSecond]          INT           NOT NULL,
    [HourlyBucket]          VARCHAR (15)  NOT NULL,
    [DayTimeBucketGroupKey] INT           NOT NULL,
    [DayTimeBucket]         VARCHAR (100) NOT NULL,
    CONSTRAINT [PK_DimTime] PRIMARY KEY CLUSTERED ([TimeKey] ASC)
);


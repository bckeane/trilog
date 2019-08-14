SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER VIEW [dbo].[Kids_Swimming_FastestTimes]
AS
    SELECT   ks.Swimmer_Name
           , ks.Long_Short
           , ks.Swim_Event
           , FORMAT(MIN(test_time), N'mm\:ss\.ff') AS Fastest_Time
		   , MIN(ks.Swim_MilliSeconds) AS Fastest_Time_MilliSeconds
    FROM     dbo.Kids_Swimming AS ks
    GROUP BY ks.Swimmer_Name
           , ks.Long_Short
           , ks.Swim_Event

GO

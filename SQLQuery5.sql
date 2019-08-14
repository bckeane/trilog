SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Kids_Swimming_FastestTimes_AgeGroup]
AS
    SELECT   ks.Swimmer_Name
           , ks.Long_Short
           , ks.Swim_Event
           , case when age <= 10 then '10 & Under'
                              when age <= 12 then '11 - 12'
                              when age <= 14 then '13 - 14'
                              else 'Seniors'
                              end as Age_Group
           , FORMAT(MIN(test_time), N'mm\:ss\.ff') AS Fastest_Time
		   , MIN(ks.Swim_MilliSeconds) AS Fastest_Time_MilliSeconds
    FROM     dbo.Kids_Swimming AS ks
    GROUP BY ks.Swimmer_Name
           , ks.Long_Short
           , ks.Swim_Event
           , case when age <= 10 then '10 & Under'
                              when age <= 12 then '11 - 12'
                              when age <= 14 then '13 - 14'
                              else 'Seniors'
                              end

GO

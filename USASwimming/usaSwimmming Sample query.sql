SELECT   id
       , Swimmer_Name
       , Swim_Event
       , SUBSTRING(Swim_Event, 1, CHARINDEX(' ', Swim_Event) - 1) AS Swim_Distance
       , LTRIM(RIGHT(Swim_Event, CHARINDEX(' ', Swim_Event) - 1)) AS Swim_Stroke
       , AltAdjTime AS Swim_Time_Raw
	   , CAST(AltAdjTime AS TIME) AS test_time
	   , mmssfff = FORMAT(cast(AltAdjTime as time), N'mm\:ss\.ff')
       , Age
       , PowerPoints
       , TimeStandard
       , Swim_Meet_Name
       , LSC
       , Club
       , Swim_Date
       , CASE WHEN DATEPART(m, Swim_Date)
                   BETWEEN 4 AND 8 THEN 'Long'
              ELSE 'Short'
         END AS Long_Short
FROM     dbo.USA_Swimming_Import
ORDER BY PowerPoints DESC
--ORDER BY Long_Short
--       , Swim_Event
--       , Swim_Time

--ORDER BY CAST(Swim_Date AS DATE) DESC
--       , Swim_Meet_Name
--       , Swimmer_Name
--123
--BR
--FR
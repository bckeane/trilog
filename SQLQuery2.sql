select *-- min(Swim_Time_Raw)
select min(test_time)
from  Kids_Swimming
where Swimmer_Name = 'Logan'
and Swim_Event = '100 FR'
and Long_Short = 'Short'

--order by Swim_MilliSeconds

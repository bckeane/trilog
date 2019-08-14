select dd.calendar_date
,  240 - (datediff(WEEK,'2018-11-05',dd.calendar_date)) as target_weight_this_week
     , tw.pounds
     , tw.fat_pct
     , who.display_nm
     , tw.pounds - (240 - (datediff(WEEK,'2018-11-05',dd.calendar_date)) )  as actual
from dbo.date_dim as dd
join dbo.tri_weight as tw
on dd.calendar_date = tw.date_value
join dbo.tri_who as who
on tw.who_key = who.who_key
where dd.calendar_date >= '2018-11-01'

order by dd.calendar_date

/*
select *
from dbo.tri_weight
where date_value = '2018-11-12'

select *
from datedimension
where date = '2018-11-12'
*/
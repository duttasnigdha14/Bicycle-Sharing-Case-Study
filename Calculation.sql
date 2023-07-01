-- Calculation

-- Average Trip Duration
select Avg(trip_duration) as Avg_trip_duration_min
from combine_data_2022;
-- 17 min

--Count the number of causual member and annual member
select member_casual,count(member_casual)
from combine_data_2022
group by member_casual;



-- Useage of the bikes
select rideable_type,count(rideable_type)
from combine_data_2022
group by rideable_type;

--average trip  duration  according to the members
select member_casual,avg(trip_duration) as Average_trip_duration_min
from combine_data_2022
group by member_casual;

--successful month of the year
select started_month, count(started_month) as Total_Usuage
from combine_data_2022
group by started_month
order by Total_Usuage Desc

--
--extra
SELECT *
FROM combine_data_2022
WHERE trip_duration = (SELECT MAX(trip_duration) FROM combine_data_2022);



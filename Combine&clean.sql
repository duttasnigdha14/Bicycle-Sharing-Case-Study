select * from January_2022$;

/*Combine the 12 month dataset into one*/

select * 
into combine_data_2022
from(
    select * from January_2022$
    union all
    select * from ['2_February_2022$']
    union all
    select * from ['March_2022$']
	union all
    select * from April_2022$
	union all
	select *  from ['May_2022$']
	union all
	select * from ['June_2022$']
	union all
	select * from ['7_July_2022$']
	union all
	select * from ['August_2022$']
	union all
	select * from ['September_2022$']
	union all
	select * from October_2022$
	union all
	select* from November_2022$
	union all
	select * from ['12_December_2022$']
)t

select * from combine_data_2022;

--Count the total No of rows as ride _id is an unique number
select COUNT(ride_id) from combine_data_2022;

--Clean the data

-- Delete all null or blank values from start_station_id, start_station_name,end_station_name, end_station_id
delete from combine_data_2022
where start_station_id is null or
start_station_name is null or
end_station_name is null or
end_station_id is null;

--delete the ride_id as it is not requried for analysis
ALTER TABLE combine_data_2022
DROP COLUMN ride_id;

--create a new column on basis of start date
ALTER TABLE combine_data_2022
ADD started_date DATE;

UPDATE combine_data_2022
SET started_date = CONVERT(DATE, started_at);

-- Verify the data in the new column
SELECT *
FROM combine_data_2022;

--create a new column on basis of end date
ALTER TABLE combine_data_2022
ADD ended_date DATE;

UPDATE combine_data_2022
SET ended_date = CONVERT(DATE, ended_at);

--create new columns on the basis of started_time, ended_time
ALTER TABLE combine_data_2022
ADD started_time TIME,
	ended_time TIME;

UPDATE combine_data_2022
SET started_time=CONVERT(TIME,started_at),
	ended_time=CONVERT(TIME,ended_at);
	
-- creating a new column to calculate the trip duration
ALTER TABLE combine_data_2022
ADD trip_duration INT;


UPDATE combine_data_2022
SET trip_duration = DATEDIFF(minute,started_at,ended_at);


--

ALTER TABLE combine_data_2022
ADD started_month Varchar(20);

UPDATE combine_data_2022
SET started_month =DATENAME(MONTH,started_at)



select * from combine_data_2022
order by started_at;

--extra
ALTER TABLE combine_data_2022
DROP COLUMN time_difference_new



ALTER TABLE combine_data_2022
DROP COLUMN started_month
ALTER TABLE combine_data_2022
DROP COLUMN started_day

ALTER TABLE combine_data_2022
ADD started_day varchar(20);

UPDATE combine_data_2022
SET started_day = DATENAME(weekday,started_at)


select TOP 1 * from combine_data_2022
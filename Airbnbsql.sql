Select * 
from AB_US_2020

--distinct cities

select distinct city
from AB_US_2020

--count of airbnb in each cities

select city , 
       count(room_type) as count
from AB_US_2020
group by city

--distinct rooms
select distinct room_type
from AB_US_2020

--count of room_types overall
select room_type,
       count(room_type) as count
from AB_US_2020
group by room_type

--Count of Types of rooms in each city 
select  city , 
        room_type , 
		count(room_type) as count
from AB_US_2020
group by city, room_type
order by city asc

--rooms available for 365 days

select city , 
       room_type , 
	   availability_365
from AB_US_2020
where availability_365 = 365

--highest review for city
select city , 
       sum(number_of_reviews) as Total_reviews
from AB_US_2020
group by city
order by 2 desc
--count of airbnb in each city

select city , 
       count(room_type) as count
from AB_US_2020
group by city

-- max reviews by city
select city, 
       max(number_of_reviews) as reviews
from AB_US_2020
group by city

--avg price per room in each city
select city,
       avg(price) avg_price 
from AB_US_2020
 group by city

 --avg price for room type
 select city,
        room_type , 
        avg(price) avg_price
 from AB_US_2020
 group by city, room_type
 order by city asc

 --avg review for city
 
 select city , 
        avg(number_of_reviews) as avg_reviews
 from AB_US_2020
 group by city

 --avg review for room_type by city
 
 select city,
        room_type , 
        avg(number_of_reviews) as avg_reviews
 from AB_US_2020
 group by city, room_type
 order by city asc

 --Highest no. of count in city
 select city,max(count) from  from AB_US_2020
 where max(count) in 
 (select city,count(room_type) as count
 from AB_US_2020
 group by city
 order by count desc )
 from AB_US_2020
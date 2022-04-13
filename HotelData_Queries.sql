With Hotels as 
(
	select * from HD18
	union
	select * from HD19
	union
	select * from HD20
)

--query to join all three tables 
/* 
select * from Hotels 
left join MarketSegment
on Hotels.market_segment = MarketSegment.market_segment
left join MealCost
on MealCost.meal = Hotels.meal
*/

--query to calculate hotel revenue in respect to year and type of hotel
select 
arrival_date_year, hotel, round (sum((stays_in_week_nights + stays_in_weekend_nights)* adr),2) as Revenue 
from Hotels
group by arrival_date_year, hotel


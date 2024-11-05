Create Database Project__2










-------retrieve the total number of customer from each region-----
select region, count (customerid) as region_customomers from [dbo].[Customer Data]
group by region

-----find the most popular subscription type by the number of customers------
select subscriptiontype, count (customerid) as cust_subscription from [dbo].[Customer Data]
group by subscriptiontype
order by cust_subscription desc

-----find customer who canceled their subscription within 6 months------
SELECT * 
from [dbo].[Customer Data]
where datediff(month, SubscriptionStart, SubscriptionEnd) <= 6

--------calculate the average subscription duration for all customers----
select avg(datediff(year, subscriptionstart, subscriptionend)) as average_duration
from [dbo].[Customer Data]

------find customers with subscription longer than 12 months
select customerid, subscriptiontype, subscriptionstart, subscriptionend
from  [dbo].[Customer Data]
where datediff(month, subscriptionstart, subscriptionend) > 12

------calculate total revenue by subscription type-----
select subscriptiontype, sum(revenue) as total_revenue
from [dbo].[Customer Data]
group by 

-----find the top 3 regions by subscription cancellation----
select region, count(*) as canceled_sub
from [dbo].[Customer Data]
where canceled = 1
group by region
order by canceled_sub desc

select region, count(*) as canceled_sub
from [dbo].[Customer Data]
where canceled = 0
group by region
order by canceled_sub desc

-----find the total number of active and canceled subscriptions-----
select canceled, count(*) as total_subscriptions
from [dbo].[Customer Data]
group by canceled


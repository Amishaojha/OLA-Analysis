create database ola;
use ola;
-- Retrive all successsful bookings
 create view Successful_Bookings as select * from bookings where Booking_Status ='Success';

-- Find the average ride distance for each vehicles type:
select  Vehicle_Type ,avg(Ride_Distance)from bookings group by Vehicle_Type;


-- Get the total number of canceles rides bby customers:
select count(Canceled_Rides_by_Customer) as Canceled_Rides_by_Customer from bookings;
select count(*) from bookings where Booking_Status='Canceled by Customer';


-- List the top 5 customers who booked the highest number of rides:
select count(Booking_ID), Customer_ID from bookings group by Customer_ID order by count(Booking_ID) desc limit 5;


-- Get the number of rides canceles by drivers due to personal and car-related
select count(*) from bookings where Canceled_Rides_by_Driver='Personal & Car related issue';


-- Find the maximum and minimum driver ratings for Prime sedan bookings:
select max(Driver_Ratings),min(Driver_Ratings) from bookings where Vehicle_Type='Prime Sedan';


-- Retrieve all rides where payment was made using UPI:
select * from bookings where Payment_Method= 'UPI';

-- Find the average customer rating per vehicle type:
select Vehicle_Type, avg(Customer_Rating)from bookings group by Vehicle_Type;

-- Calculate the total booking values of rides completed successfully:
select sum(Booking_Value) from bookings where Booking_Status='Success';

-- List all incomplete rides along with the reason:
select distinct(Incomplete_Rides), Incomplete_Rides_Reason from bookings; 

















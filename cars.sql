create schema cars;
use cars;
-- READ DATA --
select * from car_dekho;
-- Total Cars: To get a count of total Records --
select count(*) from car_dekho;#7927
-- The Manager asked the employee ,how many cars are available in 20223 --
select count(*) from car_dekho where year =2023;#6
-- Similarly for the year 2020,2021,2022 --
select count(*) from car_dekho where year = 2022;#7
select count(*) from car_dekho where year = 2021;#7
select count(*) from car_dekho where year = 2020;#74
select count(*) from car_dekho where year in (2020,2021,2022);#88
-- Group By --
select count(*) as 'Total Cars' from car_dekho where year in (2020,2021,2022) group by year;
-- client asked me to print the total of all cars by year , i don't want to see all the details..--
select year, count(*) as 'Total Cars' from car_dekho  group by year;
-- client asked the car dealer that how many deisel cars are there in 2020 --
select count(*) as 'Total Diesel Cars'from car_dekho where year = 2020 and fuel ="Diesel";#20
-- client asked the car dealer that how many petrol cars are there in 2022 --
select count(*) as 'Total Petrol Cars'from car_dekho where year = 2020 and fuel ="Petrol";#51
-- Manager told the employee to print all the Diesel,petrol and CNG cars are there for all years--
select year,count(*) as 'Total Petrol cars' from car_dekho where fuel= "Petrol" group by year;
select year,count(*) as 'Total Diesel Cars' from car_dekho where fuel= "Diesel" group by year;
select year,count(*) as 'Total CNG cars' from car_dekho where fuel= "CNG" group by year;
-- Manager asked the car dealer that which year has more than 100 cars --
select year,count(*) as 'Total Cars' from car_dekho group by year having count(*)>100;
select year,count(*) as 'Total Cars' from car_dekho group by year having count(*)<50;
-- The Manager said to the employee that all cars count details between 2015 & 2023 ,with complete sheet --
select year,count(*) as 'Total Cars' from car_dekho where year between 2015 and 2023 group by year order by year asc;
-- The Manager said to the employee that all cars  details between 2015 & 2023 ,with complete sheet --
select * from car_dekho where year between 2015 and 2023;

-- END --
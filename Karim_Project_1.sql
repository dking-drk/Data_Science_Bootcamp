--- Hey Karim, great work! 
--- Two things: 
--- 1. Make sure you put the answers as a comment after your sql answers 
--- 2. In the last question, you needed the proportion, so it should have been sum(population_age_70_74 + population_age_75_79)/sum(population)

--- 3.5/4 = 88%

--1.Which metro area in the country has the highest average household income in the US?
 select metro_city, avg(median_hh_income) 
 from census_metro_data cmd
 group by metro_city 
 order by 2 desc
 --limit 1
 
--2.Which metro area has the zip code with the largest population?
select zip, metro_city, population 
from census_metro_data cmd 
where population = (select max(population) from census_metro_data cmd2)
 
--3.What state has the most metro areas?
select state , count(metro_city) as cnt 
from census_metro_data cmd 
group by state 
order by 2 desc
--limit 1

--4.Which metro area has the largest proportion of people aged 70-79?
select metro_city, sum(population_age_70_74 + population_age_75_79) as population_age_70_79 
from census_metro_data cmd
group by metro_city 
order by 2 desc
--limit 2
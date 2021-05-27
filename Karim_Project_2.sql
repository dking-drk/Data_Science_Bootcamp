--- Hey Karim, 
--- Couple of things on this homework. 
--- 1. For question 1 and 2, you definitely could have found the answer with those queries but you didn't write the answers so I don't know if you did. 
--- 	So I can only give you havf credit on those two answers. 
--- 2. The 3rd question would be right but you didn't include campaign. I have to give you half credit on that as well. 
--- 3. I assume you didn't answer the 4th question because you didn't know what CPC is? If that's the case, cpc is cost per convesions so you would want to 
--- 	do sum(cost)/sum(conversions). You can email me that sql to get full credit on that last question. 

--- Correct Answers: 2/4 50%

--In this project you are an analyst for company that does corporate office renovation, clean up, and organization.
--The Google marketing leader comes to you and wants to know what the most expansive ad campaigns are by platform and if those campaigns are efficient on a cost/conversion (cpc) basis.

--For this project, use the search_ad_data, search_ad_campaigns, and search_ad_platforms tables. You will likely need to create two tables to answer the following questions.

--1.Which campaign typically has the highest cost each year?

select sac.campaign as campaign, sac.keyword, round(sum(sad.cost)) as cost from search_ad_data sad 
inner join search_ad_campaigns sac on sad .campaign_id = sac .campaign_id
group by 1,2
order by 3 desc


--2.Which campaign typically has the lowest cost per conversion each year.

select sac.campaign as campaign, sac.keyword, round(sum(sad.conversions)) as conversions from search_ad_data sad 
inner join search_ad_campaigns sac on sad .campaign_id = sac .campaign_id
group by 1,2
order by 3


--3.What is the year over year trend in campaign costs?

select date_part('year', date) as year, round(sum(sad.cost)) as cost  from search_ad_data sad
group by 1
order by 2 desc 

--4.What is the year over year trend in CPC?



--5.Based on what you have learned, what would you tell the marketing leader about the campaigns? Are there any we should spend less money on? Are there some that are more efficient than others?

--Bonus:

--You analytics boss thinks this is a good metric to keep track off and asks you to create a view for the query you wrote. Create a view in the data_science_bootcamp database with the naming convention “vw_sem_tracking_[your name]”. Make sure there are no spaces in the view name. All spaces should be “_” instead. x  

select * from search_ad_data sad 
select * from search_ad_campaigns sac 

select sac.campaign as campaign, sac.keyword, round(sum(sad.cost)) as cost from search_ad_data sad 
inner join search_ad_campaigns sac on sad .campaign_id = sac .campaign_id
group by 1,2
order by 3 desc

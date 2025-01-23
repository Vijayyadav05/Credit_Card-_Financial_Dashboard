use ccdb;
select * from credit_card;
select Annual_Fees,card_category from credit_card where annual_fees is null;
select * from credit_card where annual_fees is not null;
-- 1
select count(*) as 'Total No. of Client' from credit_card;
-- 2
select round((sum(Annual_Fees)+ sum(Interest_Earned)),2) as 'Total revenue' from credit_card ;
alter table credit_card change ï»¿Client_Num  Client_Num varchar(20);
-- 3
select sum(total_trans_Amt) as 'Total Transaction Amount' from credit_card ;
-- 4
select sum(customer_acq_cost) from credit_card;
-- 5
select sum(total_trans_vol) as 'Total transaction counts' from credit_card;
-- 6
select round(avg(cust_satisfaction_score),2) as 'Satisfaction' from customer;
-- 7
select Use_chip ,round((sum(Annual_Fees)+ sum(Interest_Earned)),0) as 'Total revenue' from credit_card
group by Use_chip order by `Total revenue` desc;
-- 8
select card_category, round((sum(Annual_fees) + sum(Interest_Earned)),2) as Total_Revenue from credit_card
group by card_category order by Total_revenue desc;
select * from customer;
-- 9
ALTER TABLE customer ADD COLUMN Age_group VARCHAR(10);

update customer set Age_group = case when customer_Age between 18 and 30 then '18-30' when customer_age between
30 and 40 then '30-40' when customer_age between 40 and 50 then '40-50' when customer_age between 50 and 60 then 
'50-60' when customer_age >60 then '60+' end;
alter table customer change ï»¿Client_Num  Client_Num varchar(15);
select Age_group , round((sum(Annual_fees) + sum(Interest_Earned)),2) as Total_Revenue from credit_card inner join
customer using(client_Num) group by Age_Group order by Total_revenue desc;
-- 10
select * from credit_card;
select customer_job , round((sum(Annual_fees) + sum(Interest_Earned)),0) as Total_Revenue from credit_card inner join
customer using(client_Num) group by customer_job order by Total_revenue desc; 
-- 11
select Education_level , round((sum(Annual_fees) + sum(Interest_Earned)),0) as Total_Revenue from credit_card inner join
customer using(client_Num) group by Education_level order by Total_revenue desc; 
-- 12
alter table credit_card change `Use Chip` Use_Chip varchar(20);
alter table credit_card change `Exp Type` Exp_Type text;

select Exp_Type, round((sum(Annual_fees) + sum(Interest_Earned)),0) as Total_Revenue from credit_card 
group by Exp_Type order by Total_revenue desc;
-- 13
select Qtr, round((sum(Annual_fees) + sum(Interest_Earned)),0) as Total_Revenue from credit_card 
group by Qtr order by Total_revenue desc;
-- 14
select Qtr, sum(Total_Trans_Vol) as Total_count from credit_card group by Qtr order by 2 desc;
-- 15
select avg(Cust_Satisfaction_score) as Avg_Satisfaction from customer;
-- 16
use ccdb;
select marital_Status, round((sum(Annual_fees) + sum(Interest_Earned)),0) as Total_Revenue from credit_card
inner join customer using(Client_Num) group by marital_status order by 2 desc;
select * from credit_card;
select * from customer;
select customer_job,  round((sum(Annual_fees) + sum(Interest_Earned)),0) as Total_Revenue from credit_card c1
join customer c2 on c1.client_num = c2.client_num group by customer_job order by 2 desc;
select min(week_start_date), max(week_start_date) from credit_card;







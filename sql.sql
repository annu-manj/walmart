select * from walmart

select count(*)
from walmart

/*total number of transactions.*/
select count(*)
from walmart

/*total revenue*/
SELECT ROUND(SUM((quantity * unit_price)::numeric), 2)
FROM walmart;

/* Count number of transactions per payment_method. */
SELECT COUNT(*), payment_method
from walmart
group by payment_method

/* total revenue per category */
select ROUND(SUM((quantity * unit_price)::numeric), 2), category
from walmart
group by category

/*total quantity sold per category.*/
select sum(quantity), category
from walmart
group by category


/* average rating per Branch. */

select ROUND(SUM((quantity * unit_price)::numeric), 2) as total_revenue,Branch
from walmart
group by Branch


/*total revenue per City*/
select total_price, city
from walmart
group by city

/* top 3 categories by revenue. */

select ROUND(SUM((quantity * unit_price)::numeric), 2) as total_revenue, category
from walmart 
group by category
order by total_revenue desc
limit 3;


/* top 1 categories by revenue per brach */
with table1 as (
select ROUND(SUM((quantity * unit_price)::numeric), 2) as total_revenue, category,branch
from walmart 
group by category,branch
),
ranked as(
select *,
row_number() over (partition by branch order by total_revenue desc) as rnk
from table1
)
select branch, category, total_revenue
from ranked 
where rnk <= 2

/* cmost used payment method in each branch */

with t1 as (
select count(*) as cnt, payment_method,branch
from walmart
group by payment_method,branch
),
ranked as (
select *,
rank() over(partition by branch order by cnt desc) as rnk
from t1
)
select branch,payment_method,cnt
from ranked
 where rnk = 1

/* total revenue and average rating per category. */
select ROUND(SUM((quantity * unit_price)::numeric), 2) as total_revenue,ROUND(avg(rating)::numeric,2), category
from walmart
group by category

/* top 5 transactions with highest total price.*/
SELECT *,
       (unit_price * quantity) AS total_price
FROM walmart
ORDER BY unit_price * quantity DESC
LIMIT 5;

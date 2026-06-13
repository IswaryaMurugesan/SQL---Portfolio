use ecommercedb ;
/* 1: ORDER BY
-- List all products sorted by price descending
*/
select 
 Product_id , Product_name , Price 
from product
order by price desc ; 

/* Question 2: ORDER BY with LIMIT 
-- Show the top 3 most expensive products
*/
Select 
product_id , Product_name, Price 
from product 
Order by  price desc
limit 3;

/* Question 3: Aggregate Functions – Total Sales
-- Find the total sales amount across all sales.
*/
select 
sum( sale_amount) as total_salesamount
from sales ;

/* Question 4: Aggregate Functions – Average Price
-- Find the average sale amount from the Sales table.
*/
select 
avg(sale_amount) as avg_sales_amount
from sales ;

/* Question 5: Aggregate Functions – Count & Max/Min
-- Count total number of sales.
-- Find highest and lowest sale amounts.
*/
select 
count(*) as total_no_sales ,
min(sale_amount) as Min_sales,
max(sale_amount) as Max_sales
from sales ;

-- Question 6: GROUP BY – Total Sales per Product
-- Find total sales amount per product.

select 
	product_id ,
	sum(sale_amount) as Total_sales
from sales
group by product_id ;
 
/* Question 7: GROUP BY with HAVING
   List products whose total sales exceed ₹50,000.
*/
    select 
    product_id,
    sum(sale_amount) as Total_salesamount
    from sales 
    group by product_id
    having total_salesamount > 50000 ;
    
/*
Question 8: ORDER BY with GROUP BY
Scenario:
Show total sales per product, sorted descending by total sales.
*/

select 
	Product_id, 
    sum(sale_amount) as total_sales
     from sales 
     group by product_id
     order by total_sales desc ;
     
/* Question 9: LIMIT with GROUP BY
Scenario:
Find the top 3 products by total sales amount.
*/

select 
	product_id , 
    sum(sale_amount) as total_sales_amount 
    from sales 
    group by product_id 
    order by total_sales_amount desc
    limit 3 ;
    
    
/* Question 10: HAVING with Aggregate Condition
Scenario:
Show products with total sales > ₹30,000 AND average sale amount > ₹10,000
*/

select 
Product_id , 
sum(sale_amount) as total_sales_amount ,
avg(sale_amount) as avg_sales
from sales 
group by product_id
having Total_sales_amount  > 30000 and avg_sales >10000 ;

/* Question 11: Window Functions
Scenario:
Management wants a ranking of products based on their prices.
*/

select 
	product_id, Product_name, price ,
rank() over ( order by price desc ) as ranknumber 
from product ;



    

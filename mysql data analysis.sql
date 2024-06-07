-- What is the total amount each customer spent on zomato?

select 
  a.userid, 
  sum(b.price) total_amt_spent 
from 
  sales a 
  inner join product b on a.product_id = b.product_id 
group by 
  a.userid;
  
  -- List each user’s first sale date
  
  SELECT 
  s.userid, 
  MIN(s.created_date) AS first_sale_date 
FROM 
  sales s 
GROUP BY 
  s.userid;

  
-- How many days has each customer visited zomato?
  
  select 
  userid, 
  count(distinct created_date) distinct_days 
from 
  sales 
group by 
  userid;
  
-- what was the first product purchased by each customer?

select * from 
  (
    select 
      *, 
      rank() over (
        partition by userid 
        order by 
          created_date
      ) rnk 
    from 
      sales
  ) a 
where 
  rnk = 1;
  
 -- what is the most purchased item on the menu & how many times was it purchased by all customers?
 
SELECT 
  userid, 
  COUNT(product_id) AS cnt 
FROM 
  sales 
WHERE 
  product_id = (
    SELECT 
      product_id 
    FROM 
      sales 
    GROUP BY 
      product_id 
    ORDER BY 
      COUNT(product_id) DESC 
    LIMIT 1
  ) 
GROUP BY 
  userid;

-- Identify users who have made sales but have not signed up for gold membership

SELECT 
  DISTINCT s.userid 
FROM 
  sales s 
LEFT JOIN 
  goldusers_signup g 
ON 
  s.userid = g.userid 
WHERE 
  g.userid IS NULL;

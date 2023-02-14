use employee;
create table customer_order(customer_name varchar(50),order_id varchar(10)
,status varchar(50));

INSERT INTO customer_order VALUES('John','J1','DELIVERED')
,('John','J2','DELIVERED')
,('David','D1','DELIVERED'),('David','D3','CREATED'),('Smith','S1','SUBMITTED'),
('Krish','K1','CREATED');

SELECT * FROM customer_order;

SELECT customer_name,
(case when sum(status = 'delivered')=count(*)
then 'completed'
when sum(status = 'delivered')> 0
then 'in progress'
when sum(status = 'submitted')>0
then 'awaiting progress'
else 'awating submission'
end)as final_status
from customer_order
group by customer_name
order by customer_name;



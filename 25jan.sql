

create table stocks
(
    stock_name varchar(40),
    operation enum('sell','buy'),
    operation_day int,price int,
    primary key(stock_name,operation_day));
    
    
insert into stocks values('Leetcode','Buy',1,1000);
insert into stocks values('Corona Masks','Buy',2,10);
insert into stocks values('Leetcode','Sell',5,9000);
insert into stocks values('Handbags','Buy',17,30000);
insert into stocks values('Corona Masks','Sell',3,1010),
('Corona Masks','Buy',4,1000),('Corona Masks','Sell',5,500),('Corona Masks','Buy',6,1000),('Handbags','Sell',29,7000),
('Corona Masks','Sell',10,10000);


select a.stock_name as stock_name,a.price-b.price as capital_gain_loss
from
(
select stock_name,sum(price) as price
from stocks
where operation='buy'
group by stock_name
) b
join
(
select stock_name,sum(price) as price
from stocks
where operation='sell'
group by stock_name
) a
on a.stock_name=b.stock_name
order by capital_gain_loss desc;
	
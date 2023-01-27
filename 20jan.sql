CREATE TABLE Users
(
	user_id  int,
    join_date date,
    favorite_brand VARCHAR(40),
    PRIMARY KEY (user_id)
);


INSERT into Users values (1,'2018-01-01','lenovo'),
(2,'2018-02-09','Samsung'),
(3,'2018-01-19','LG'),
(4,'2018-05-21','HP');

select * from users;


CREATE TABLE Items
(
	item_id int primary key,
    item_brand varchar(40)
);

INSERT into Items values (1,'Samsung'),(2,'Lenovo'),
(3,'LG'),(4,'HP');

select * from items;


CREATE TABLE Orders
(
	order_id int,
    order_date date,
    item_id int,
    buyer_id int,
    seller_id int,
    PRIMARY KEY (order_id),
    foreign key (item_id) references Items (item_id),
    foreign key (buyer_id) references Users (user_id)
);

INSERT into Orders values (1,'2019-08-01',4,1,2),(2,'2018-08-02',2,1,3),
(3,'2019-08-03',3,2,3),(4,'2018-08-04',1,4,2),
(5,'2018-08-04',1,3,4),(6,'2019-08-05',2,2,4);

select * from orders;


CREATE TABLE ord2019(SELECT buyer_id,COUNT(
CASE 
	WHEN order_date > '2019-01-01' THEN 1
END) as orders_in_2019
FROM Orders
group by buyer_id
having orders_in_2019>=1);

SELECT u.user_id,u.join_date,
(
CASE
	WHEN o.orders_in_2019 IS NULL THEN 0
    ELSE o.orders_in_2019
END
)AS orders_in_2019
FROM ord2019 o
RIGHT JOIN Users u
ON o.buyer_id=u.user_id;





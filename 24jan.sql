create table trips
(
id int,
client_id int,
driver_id int,
city_id int,
status enum('completed','cancelled_by_driver','cancelled_by_client'),
request_at date,
primary key(id));

INSERT INTO trips values(1,1,10,1,'completed', '2013-10-01'),
(2,2,11,1,'cancelled_by_driver','2013-10-01'),
(3,3,12,6,'completed','2013-10-01'),
(4,4,13,6,'cancelled_by_client','2013-10-01'),
(5,1,10,1,'completed','2013-10-02'),
(6,2,11,6,'completed','2013-10-02'),
(7,3,12,6,'completed','2013-10-02'),
(8,2,12,12,'completed','2013-10-03'),
(9,3,10,12,'completed','2013-10-03'),
(10,4,13,12,'cancelled_by_driver','2013-10-03');

select * from trips;


create table users(users_id  int,
banned enum('Yes', 'No'),
role enum('client', 'driver', 'partner'),
primary key(users_id));



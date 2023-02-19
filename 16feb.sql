create table donor(id int,name  varchar(50),gender enum('m','f'),city varchar(50),
blood_group varchar(30),amount int);

insert into donor values(1,'MARIA','F','Warne, NH','AB+',7),
(2,'DOROTHY','F','East Natchitoches, PA','AB+',3),
(3,'CHARLES','M','East Natchitoches, PA','A-',6),
(4,'DOROTHY','F','East Natchitoches, PA','AB+',9),
(5,'MICHAEL','M','Warne,NH','A+',1);

SELECT * FROM DONOR;

CREATE TABLE ACCEPTOR(id int,name  varchar(50),gender enum('M','F'),city varchar(50),
blood_group varchar(30),amount int);

insert into acceptor values(1,'LINDA','F','Warne, NH','A+',9),
(2,'CHARLES','M','Warne, NH','AB+',8),
(3,'RICHARD','M','East Natchitoches, PA','AB+',3),
(4,'LINDA','F','East Natchitoches, PA','A+',1),
(5,'PATRICIA','F','Warne, NH','A+',5);

select * from acceptor;



select a.city, d/ac as r1
from (
  select city, sum(amount) as d
  from donor
  group by city
) as a
join (
  select city, sum(amount) as ac
  from acceptor
  group by city
) as b on a.city = b.city
order by a.city;


  

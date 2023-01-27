create table events
(
event_type integer not null,
value integer not null,
time timestamp not null,
unique(event_type, time)
);
insert into events values
(2,5,'2015-05-09 12:42:00'),
(4,-42,'2015-05-09 13:19:57'),
(2,2,'2015-05-09 14:48:30'),
(2,7,'2015-05-09 12:54:39'),
(3,16,'2015-05-09 13:19:57'),
(3,20,'2015-05-09 15:01:09');
select *,
row_number() over (partition by event_type) as rank_ 
from events;

select event_type,value,
DENSE_Rank() over(partition by event_type order by time desc) as row_num 
from events;
SELECT event_type,


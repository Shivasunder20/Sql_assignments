create table activity(user_id int,session_id int,activity_date date,activity_type 
enum('open_session','end_session','scroll_down','send_message'));
#insert into activity values(1,1,'2019-07-20','open_session');
insert into activity values(1,1,'2019-07-20','scroll_down');
insert into activity values(1,1,'2019-07-20','end_session');
insert into activity values(2,4,'2019-07-20','open_session'),
(2,4,'2019-07-21','send_message');


insert into activity values(2,4,'2019-07-21','end_session'),
(3,2,'2019-07-21','open_session'),(3,2,'2019-07-21','send_message'),
(3,2,'2019-07-21','end_session'),(4,3,'2019-06-25','open_session'),
(4,3,'2019-06-25','end_session');

select * from activity;

SELECT day_,active_users
FROM(select
Case
	When '2019-06-28' <= activity_date and activity_date <= '2019-07-27' Then activity_date
END As day_,count(DISTINCT user_id) as active_users
From activity
GROUP BY day_) a
WHERE day_ BETWEEN '2019-06-28' AND '2019-07-27';










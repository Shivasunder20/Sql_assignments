create table teams (team_id integer not null,
 team_name varchar(30) not null,unique(team_id));


insert into teams values(10,'give'),(20,'never'),
(30,'you'),(40,'up'),(50,'gonna');

select * from teams;

 create table matches (match_id integer not null,
 host_team integer not null,
 guest_team integer not null,
 host_goals integer not null,
 guest_goals integer not null,unique(match_id));

insert into matches values(1,30,20,1,0),(2,10,20,1,2),
(3,20,50,2,2),(4,10,30,1,0),(5,30,50,0,1);

select * from matches;



select t.team_id,t.team_name,sum(case 
  when t.team_id = m.host_team and m.host_goals>m.guest_goals then 3
  when t.team_id = m.host_team and m.host_goals=m.guest_goals then 1
  when t.team_id = m.guest_team and  m.host_goals<m.guest_goals then 3
  when t.team_id = m.guest_team and  m.host_goals=m.guest_goals then 1
  else 0
  end)as total_points
  from teams t ,matches m group by t.team_id order by total_points desc ,t.team_id;
  
  
  




create table second_highest(emp char,deptno int,salary int);
insert into second_highest values('A',10,1000),('B',10,2000),('C',10,3000)
,('D',20,7000),('E',20,9000),('F',20,8000),('G',30,17000),
('H',30,15000),('I',30,30000);


SELECT * FROM second_highest;


select emp as EName,deptno as deptNo,salary FROM (
SELECT emp,deptno,salary,
row_number() over w as row_num
from second_highest
window w as(partition by deptno order by salary desc))
e
where row_num=2;
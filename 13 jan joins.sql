select t1.col1,t2.col2 
from table1 t1 
inner join  
table2 t2 on t1.col1=t2.col2;

-- left outer join
select t1.col1,t2.col2 
from table1 t1 
left outer join  
table2 t2 on t1.col1=t2.col2; 

-- right outer join
select t1.col1,t2.col2 
from table1 t1 
right outer join  
table2 t2 on t1.col1=t2.col2; 

-- full outer join
select t1.col1,t2.col2 
from table1 t1  
full outer  join  
table2 t2 on t1.col1=t2.col2; 
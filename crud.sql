
insert into agelist VALUES
 (7,'vijay',50);
 
select * FROM agelist;
 
update agelist set age=51;

use student;

select * from agelist where name="vijay";

UPDATE agelist SET age=52,name="joseph vijay" where id=7;

set sql_safe_updates=1;

DELETE FROM agelist where id=6;
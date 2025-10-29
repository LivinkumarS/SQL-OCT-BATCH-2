
select name as actorName, age as actorAge from agelist;

select abs(-5) as number;
select round(5.49) as number;
select ceil(5.0000001) as number;
select floor(5.9999999) as number;
select mod(5,3) as reminder;
select power(5,3) as result;
select sqrt(25) as result;


select concat("hello ","hi......","!!!") as result;
select length(concat("hello ","hi......","!!!")) as result;
select length("hello hi......!!!") as result;
select upper("hello hi......!!!") as result;
select lower("UPPER CHARS......!!!") as result;
select substring("Hello world", 7,5) as result;
select replace("Hello world", "Hello", "Hi") as result;
select trim("         hello guys!      ") as result;

select now() as dateTime;
select curdate() as dateTime;
select curtime() as dateTime;
select datediff('2025-11-19',curdate()) as difference;

select concat("His name is ",upper(name)) as actorName,
 mod(age,2) as modulus from agelist;
 
select concat("his name is ",upper(name),".","His age is ",age,"years old") 
as actorDetails from agelist;


select * from agelist;

SELECT 
    CONCAT('Youngest from this list is ', UPPER(name)) AS youngest
FROM agelist
ORDER BY age ASC
LIMIT 1;
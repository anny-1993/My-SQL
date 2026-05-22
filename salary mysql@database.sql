USE techmahindra ;

select * from salaries ;

select employee_name, year_pay
from salaries
where year_pay = 2011
order by year_pay desc ;

select employee_name, total_pay
from salaries
order by total_pay desc ;

select employee_name, max(total_pay)
from salaries
group by total_pay, employee_name
limit 5 ;

select employee_name, lower(total_pay)
from salaries
group by total_pay, employee_name
limit 10 ;

select * from salaries 
where totalbenefit_pay is null ;

select employee_name ;

SELECT DISTINCT Job_title FROM salaries;

select employee_name, max( total_pay )
from salaries
group by total_pay,employee_name
limit 1 ;

select employee_name,min( total_pay )
from salaries
group by total_pay , employee_name
order by total_pay asc
limit 1 ;

select * from salaries
where benefit_pay is null ;

select * from salaries
where overtime_pay > 50000 ;


select year_pay , employee_name , max(total_pay)
from salaries
group by year_pay,employee_name
limit 5 ;

select job_title,avg(total_pay) as avg_salary
from salaries
group by job_title
order by avg_salary desc
limit 5 ;

select employee_name , total_pay
from salaries
where total_pay > (select avg(total_pay) from salaries)
group by employee_name , total_pay
order by avg(total_pay)
limit 10 ;

select year_pay , total_pay
from salaries
where total_pay > (select avg(total_pay)
from salaries)
limit 5 ;

select job_title, count(*)
from salaries
group by job_title
order by job_title desc
limit 5 ;

SELECT employee_name, job_title, total_pay,
       RANK() OVER (PARTITION BY employee_name ORDER BY total_pay DESC) as dept_rank
FROM salaries ;

select employee_name, base_pay, overtime_pay, year_pay,
rank() over (partition by year_pay order by overtime_pay desc)
from salaries
limit 10;

select employee_name, year_pay, id, 
other_pay, row_number() over (partition by id 
order by other_pay desc)
from salaries
limit 7;

select employee_name, year_pay, id,
base_pay, totalbenefit_pay,
lag(base_pay) over (partition by year_pay
order by totalbenefit_pay)
from salaries
where year_pay = 2011
limit 15 ;

select employee_name, year_pay, 
totalbenefit_pay, base_pay,
lead(employee_name) over (partition by base_pay
order by totalbenefit_pay desc)
from salaries
limit 17;

select employee_name, year_pay,
total_pay, base_pay,
avg(total_pay) over () as diff
from salaries
order by total_pay desc
limit 15;

select employee_name, total_pay
from salaries
where total_pay > 50000

union all

select employee_name, base_pay
from salaries
where base_pay < 30000;

select job_title, year_pay
from salaries
where year_pay < 2010

union

select base_pay, totalbenefit_pay
from salaries
where year_pay > 2009;

SELECT *
FROM salaries
WHERE Job_Title LIKE '%Manager';

SELECT *
FROM salaries
WHERE Job_Title LIKE 'Manager%';

SELECT Job_Title,
COUNT(*) AS total_emp
FROM salaries
GROUP BY Job_Title
HAVING COUNT(*) > 100;

select totalbenefit_pay, count(*) as totalbenefit_pay
from salaries
group by totalbenefit_pay
having count(*) < 2000;

select employee_name, avg( base_pay )
from salaries
group by employee_name, base_pay
having avg ( base_pay) > 100000;

select year_pay, id, avg( base_pay )
from salaries
group by year_pay, id, base_pay
having avg ( base_pay) > 200000;

select employee_name, count(job_title)
from salaries
group by employee_name, job_title
order by job_title desc
limit 10;

select job_title, count(*) as employee_name
from salaries
group by job_title
having count(*) > 50;

select job_title, count(*) total_pay
from salaries
group by job_title 
having count(*) > 50;

select year_pay, avg(total_pay) as total_pay
from salaries
group by year_pay
having avg(total_pay) > 100000;

select employee_name, id, 
overtime_pay, year_pay,
rank() over(partition by overtime_pay
order by year_pay desc)
from salaries;

select employee_name, id,
total_pay, totalbenefit_pay,
dense_rank() over (order by totalbenefit_pay desc)
as rnk
from salaries
limit 10;

select employee_name, id, 
base_pay, job_title,
row_number() over (partition by job_title 
order by base_pay)
from salaries
limit 20;

select id, employee_name,
year_pay, sum(total_pay) 
over (partition by year_pay 
order by total_pay) as running_salaries
from salaries
limit 50;

select employee_name, id, max(total_pay) 
as first_highest from salaries
group by employee_name, id, total_pay
order by total_pay desc
limit 10;

select employee_name, id, max(total_pay) 
as second_highest from salaries
group by employee_name, id, total_pay
order by total_pay desc
limit 10;

select max(total_pay) as second_hight
from salaries
where total_pay < (
select max(total_pay) 
from salaries );

select max(total_pay)
as first_highest from salaries
where total_pay > (
select max(total_pay)
from salaries);

select employee_name, totalbenefit_pay
from salaries
where totalbenefit_pay > (
select avg(totalbenefit_pay)
from salaries);






























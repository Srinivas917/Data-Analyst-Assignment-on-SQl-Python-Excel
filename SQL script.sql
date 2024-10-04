create database task;
use task;
select * from adult_cleaned;

-- Get the top 10 oldest individuals earning more than 50K.
select * from adult_cleaned 
where IncomeBracket = 1
order by age desc 
limit 10;

-- Find the average hours worked per week by workclass.
select workclass, avg(`hours-per-week`) from adult_cleaned
group by workclass;

-- Calculate the proportion of individuals earning more than 50K by education.
select education, sum(incomebracket)/count(*) as proportion_over_50k from adult_cleaned 
group by education;

-- Update a person’s workclass based on age and occupation.
SET SQL_SAFE_UPDATES = 0;
UPDATE adult_cleaned
SET workclass = CASE
    WHEN age >= 40 AND occupation = 'Exec-managerial' THEN 'Private'
    WHEN age < 40 AND occupation = 'Tech-support' THEN 'Self-emp-inc'
    WHEN age >= 30 AND occupation = 'Sales' THEN 'State-gov'
    ELSE workclass -- Keeps the original workclass if no condition matches
END
WHERE occupation IN ('Exec-managerial', 'Tech-support', 'Sales');

-- Perform a JOIN to display workclass, income, and hours worked by sex.
create table employee(
employee_id int auto_increment primary key,
sex varchar(100),
workclass varchar(100),
hours_per_week int
);

insert into employee (sex, workclass, hours_per_week)
select distinct sex, workclass, `hours-per-week`
from adult_cleaned;

create table income(
employee_id int auto_increment primary key,
income varchar(100)
);
insert into income(income)
select distinct income from adult_cleaned;
select * from income;

SELECT ed.workclass, i.income, ed.hours_per_week, ed.sex
FROM employee ed
JOIN income i
ON ed.employee_id = i.employee_id
ORDER BY ed.sex;




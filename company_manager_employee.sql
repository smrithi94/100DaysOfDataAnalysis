/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
select c.company_code,c.founder
, count(distinct LM.lead_manager_code)
, count(distinct SM.senior_manager_code)
, count(distinct m.manager_code)
, count(distinct e.employee_code)
from Company c
left join Lead_Manager LM 
on c.company_code=LM.company_code
left join senior_manager SM 
on c.company_code = SM.company_code 
left join manager m 
on c.company_code=m.company_code
left join employee e 
on e.company_code=c.company_code
group by c.company_code, c.founder
order by substring(c.company_code,1,len(c.company_code)) 
;

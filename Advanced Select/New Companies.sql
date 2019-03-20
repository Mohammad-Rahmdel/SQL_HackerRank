select distinct Employee.company_code as e, founder as f,count(distinct lead_manager_code), count(distinct senior_manager_code), count(distinct manager_code), count(distinct employee_code) 
from Employee inner join Company on Employee.company_code=Company.company_code
group by e,f
order by e

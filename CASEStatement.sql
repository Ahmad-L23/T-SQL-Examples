use C21_DB1;

    update Employees2
    set salary = 
        case 
            when PerformanceRating > 90 then salary * 1.15
            when PerformanceRating between 75 and 90 then salary * 1.10
            when PerformanceRating between 50 and 74 then salary * 1.05
            else salary 
        end



  select * from      Employees2



select name, department, salary, performanceRating,
    Bounce = Case
                when department = 'Sales' then
                     case
                        when performanceRating > 90 then salary * 0.15
                        when performanceRating between 75 and 90 then salary * 0.10
                        else salary * 0.05
                  end

                  when department = 'HR' then
                        case
                            when performanceRating > 90 then salary * 0.10
                            when performanceRating between 75 and 90 then salary * 0.08
                            else salary * 0.04
                   end
                   
                   else
                       case
                            when performanceRating > 90 then salary * 0.08
                            when performanceRating between 75 and 90 then salary * 0.04
                            else salary * 0.03
                    end

                end

from employees2




select PerformanceCategory, count(*) numberOfEmployees, avg(salary) as AverageSalary
from
(select name, salary,
    case
        when performanceRating >= 80 then 'High'
        when performanceRating >= 60 then 'Medium'
        else 'Low'
     end as PerformanceCategory
from Employees2) as PerformanceTable

group by PerformanceCategory
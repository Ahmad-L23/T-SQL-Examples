
use C21_DB1


select employeeID,
case DepartmentID
	when 1 then 'Engineering'
	when 2 then 'Accounting'
	when 3 then 'Human Resources'
	else 'Other'
	end as DepartmentName
from Employees




select saleID, saleAmount,
case 
	when saleAmount <=100 then 'Weak'
	when SaleAmount between 101 and 200 then 'Good'
	when saleAmount between 201 and 300 then 'Very Good'
	when saleAmount > 300 then 'Excellent'
	else 'Not Specified'
	end as SalesLevel

from Sales



select * from Sales
order by
  case 
	when SaleAmount >= 150 then 1
	else 2
   end, SaleAmount asc





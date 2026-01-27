

use C21_DB1


declare @Counter int;

set @Counter = 1;

while @Counter <= 5
	begin 
		print 'Counter is: ' + cast(@counter as nvarchar)
		set @Counter = @Counter + 1
	end


set @counter = 5;

while @Counter > 0
		begin
			print 'Counter is: ' + cast(@counter as nvarchar)
			set @Counter = @Counter - 1
		end



declare @EmployeeID int
declare @Max int
declare @name nvarchar(50)


select @EmployeeID = min(EmployeeID) from Employees

select @Max = MAX(EmployeeID) from Employees



while @EmployeeID is not null and @EmployeeID <= @Max
      begin 
		   select @name = name from employees where EmployeeId = @EmployeeID
		   print 'Name: ' + @name
		   select @EmployeeID = min(employeeID) from Employees where EmployeeID > @EmployeeID
	  end


declare @Balance decimal(10,2) = 950 ;
declare @Withdrawl decimal(10,2) = 100 ;

while @Balance > 0
		begin
			set @Balance = @Balance - @Withdrawl

			if @Balance < 0
				begin
					print 'Insufficient funds for withdrawl'
					break
				end


			print 'New Balance: ' + cast(@Balance as nvarchar)
		
		end
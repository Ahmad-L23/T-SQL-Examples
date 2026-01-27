declare @a int, @b int;

set @a = 30; 
set @b = 20;

if @a > @b
 begin

 print 'a is greater than b'
 end



 declare @Year int;

 set @Year = 1999;

 if @Year >= 2000
	begin
	 print '21st century'
	end
else 
   begin
	print '20th century or earlier'
   end





declare @Score int;

set @score = 70;

if @Score >= 90
	begin 
	 print 'A'
	end

else
   begin
      if @Score>=80
		begin
		 print'B'
		end

	  else
		begin
		 print'C'
		end
   end




declare @Max int;
declare @num1 int; declare @num2 int

set @num1 = 20;
set @num2 = 30;

if @num1 > @num2
  begin 
   set @Max = @num1
  end

else
  begin
   set @Max = @num2
  end

  print 'The Maximum vaalue is ' + cast(@max as nvarchar)



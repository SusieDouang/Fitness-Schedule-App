declare @FirstName	varchar(50);
declare @LastName	varchar(50);
declare @DisplayFirstName varchar(50);


set @FirstName = 'Daniel';
set @LastName = 'Simmer';
set @DisplayFirstName = 'Dan';

----------------------------------------------------------
declare @FirstName	varchar(50);
declare @LastName	varchar(50);
declare @DisplayFirstName varchar(50);

select	@FirstName = a.FirstName,
		@LastName = a.LastName, 
		@DisplayFirstName = a.DisplayFirstName
from	dbo.Person a
where	a.PersonId = 2;

print @FirstName
--------------------------------------------------------------
--FLOW CONTROL (basic if else statement)

 Use FitnessSchedule

 declare @QueryId	int = null;
 
 set @QueryId = 1;

 if(@QueryId > 0)
	begin
		print 'Is greater than 0';
		print 'Actual value = ' + cast(@QueryId as varchar(5)); 
	end
else
	print 'Is zero or null';

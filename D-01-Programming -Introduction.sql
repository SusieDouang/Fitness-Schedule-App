	--DECLARE VARIABLE

declare @FirstName varchar(50);
set @FirstName = 'Daniel';
print @FirstName;
set @FirstName = 'Dan'; 
print @FirstName;

	--MULTIPLE DECLARATIONS
declare @FirstName	varchar(50),
		@LastName	varchar(50),
		@DisplayFirstName varchar(50);

	--MULTIPLE DECLARATIONS (on one line)
declare @FirstName varchar(50), @LastName varchar(50), @DisplayFirstName varchar(50); 

	--MULTIPLE DECLARATIONS (with multiple declare)
declare @FirstName	varchar(50);
declare @LastName	varchar(50);
declare @DisplayFirstName varchar(50);

	--Using Set (Keywords)
set @FirstName = 'Daniel';
set @LastName = 'Simmer';
set @DisplayFirstName = 'Dan';

	--Can't do multiple declarations with set
set @FirstName = 'Daniel', @LastName = 'Simmer', @DisplayFirstName = 'Dan';

	--using SELECT to SET VARIABLES in query
select	@FirstName = a.FirstName,
		@LastName = a.LastName, 
		@DisplayFirstName = a.DisplayFirstName
from	dbo.Person a
where	a.PersonId = 1;


	--FLOW CONTROL (on or more conditions that is base on one or more that criteria it will have an effect)
 Use FitnessSchedule

 declare @QueryId	int = null;
 if(@QueryId > 0)
	print 'Is greater than 0';
else
	print 'Is zero or null';

	--CASE STATEMENT - SELECT CLAUSE (multiple option - where Flow Control is 2 options)
Use FitnessSchedule

declare @QueryId	int = null;

set @QueryId = 1;

if(@QueryId > 0)
	begin
		select	a.PersonId, 
				a.FirstName, 
				a.LastName, 
				a.DisplayFirstName, 
				case a.Gender
					when 'Male' then 'M'
					when 'Female' then 'F'
				end as GenderAbbreviation
		from	dbo.Person a
	end
else
	print 'Is zero or null';

	--CASE STATEMENT - WHERE CLAUSE (multiple option - where Flow Control is 2 options)

Use FitnessSchedule

declare @QueryId		int = null,
		@Gender			nvarchar(10); 

set @QueryId = 1; 
set @Gender = 'M';

if(@QueryId > 0)
	begin
		select	a.PersonId,
				a.FirstName,
				a.DisplayFirstName, 
				a.Gender
		from	dbo.Person a
		where	a.Gender = case @Gender
								when 'F' then 'Female'
								when 'M' then 'Male'
							end;
		end
else
		print 'Is zero or null'; 


	--GOTO Statement is going to Label a different part of the statement - another form of flow control

Use FitnessSchedule;

declare	@QueryId		int = null, 
		@Gender			nvarchar(10), 
		@PersonId		int = null; 

set @QueryId = 1;
set @Gender = 'M';
set	@PersonId = 1;

if(@QueryId > 0)
	goto GET_ITEM; 
else 
	goto GET_COLLECTION_BY_GENDER;

GET_ITEM:
	begin
		select	a.PersonId, 
				a.FirstName, 
				a.LastName, 
				a.DisplayFirstName, 
				case a.Gender
					when 'Male' then 'M'
					when 'Female' then 'F'
				end as Gender
		from	dbo.Person a
		where	a.PersonId = @PersonId;
		goto EXIT_SECTION;
	end

GET_COLLECTION_BY_GENDER:
	begin
		select	a.PersonId, 
				a.FirstName, 
				a.LastName, 
				a.DisplayFirstName, 
				a.Gender
		from	dbo.Person a 
		where	a.Gender = case @Gender
							when 'F' then 'Female'
							when 'M' then 'Male'
						end; 

		goto EXIT_SECTION; 
	end

EXIT_SECTION:


							--Table SCALAR Value



-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Susie Douang
-- Create date: 07.28.2016
-- Description:	Take a string parameter and properly title cases the input
-- =============================================
CREATE FUNCTION dbo.udf_TitleCase(

	@TextToBeTitleCased	varchar(500)
)

RETURNS varchar(500)
AS 
BEGIN 
	declare @Reset bit; 
	declare @Ret varchar(500); 
	declare	@i	int; 
	declare @c char(1); 

	select @Reset = 1, @i=1, @Ret = ''; 
	
	while (@i <= len(@TextToBeTitleCased))
		select @c= substring(@TextToBeTitleCased,@i,1), 
			@Ret = @Ret + case when @Reset=1 then UPPER(@c) else LOWER(@c) end, 
			@Reset = case when @c like '[a-zA-Z]' then 0 else 1 end, 
			@i = @i +1

		return	@Ret

END
GO



----------------------
--Query the Cases


select dbo.udf_TitleCase('JIMMY'); 

-- Scalar Value -- Stand alone
	
select *,
	dbo.udf_TitleCase(upper(FirstName)) as UpperCase
from dbo.Person

--cannot 
exec dbo.udf_Title('JIMMY'); 






select dbo.udf_TitleCase('JIMMY'); 


	
select *,
	dbo.udf_TitleCase(upper(FirstName)) as UpperCase
from dbo.Person


exec [dbo].[usp_ExecutePerson] @FirstName = 'Test', @LastName = 'Last', @DisplayFirstName = 'Test', @QueryId = 10

select * from dbo.Person


update dbo.Person set PersonId = 13 where LastName = 'NULL'



							--Table FUNCTION Value

--	Author:			Susie
--	Create Date:	07.28.2016
--	Description:	Returns table of email addresses per Instructor

CREATE FUNCTION dbo.udf_InstructorEmail
	(
		@InstructorId int
	)

RETURNS TABLE 
AS
RETURN
(
		select		a.EmailId, 
					a.EmailAddress, 
					a.InstructorId, 
					b.EntityTypeName as EmailType
		from		Email a
		inner join	dbo.EntityType b on a.EntityTypeId = b.EntityId
		where		a.InstructorId = @InstructorId
)


--- Query the Function

select * from dbo.udf_InstructorEmail(3);


--Example of a table valued function


--Stored PROCEDURES are similar to FUCNTIONS

--		* Both run T-SQL
--		* Accept parameters
--		* Output values
--		
--		FUNCTIONS 
		-- Outputs a SCALAR VALUE and TABLE
		-- Written within a query
		-- Embedded within SELCT//FROM clause
			
--		STORED PROCEDURES 
		-- Output RESULT set and VARIABLE BY PARAMETERS
		-- Runs by itself with EXCE 	

select * from dbo.Person
where PersonId = 2

--Declare Value

declare @PersonId	int =3;

select * from	dbo.Person
where	PersonId = @PersonId
----------------------------------------

--STORED PROCEDURE


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Susie>
-- Create date: <7/27/2016>
-- Description:	<Procedure to return items and collection of people>
-- =============================================
CREATE PROCEDURE dbo.usp_GetPerson(
	@PersonId	int = null, 
	@QueryId	int = 10
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	if(@QueryId = 10) begin goto GET_ITEM end; 
	if(@QueryId = 20) begin goto GET_COLLECTION end; 

--ADD this line in case @QueryId is not any of the above IF statements
	goto EXIT_SECTION;

--BEGIN: GET ITEM SECTION
GET_ITEM:
	begin
		select	a.FirstName, 
				a.LastName,
				a.DisplayFirstName, 
				a.Gender
		from	dbo.Person a
		where a.PersonId = @PersonId;

		goto EXIT_SECTION;
	end

--END: GET COLLECTION SECTION

--BEGIN: GET COLLECTION SECTION
GET_COLLECTION:
	begin
		select	a.FirstName, 
				a.LastName, 
				a.DisplayFirstName, 
				a.Gender
		 from	dbo.Person a; 

		 goto	EXIT_SECTION;
	end

--BEGIN: EXIT SECTION

EXIT_SECTION:

--END: EXIT SECTION

END
GO
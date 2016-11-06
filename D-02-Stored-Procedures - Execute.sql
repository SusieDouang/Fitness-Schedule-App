USE FitnessSchedule
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Susie Douang
-- Create date: 07/27/2016
-- Description:	Procedure to insert, udpate and delete persons
-- =============================================
CREATE PROCEDURE dbo.usp_ExecutePerson(
		@PersonId			int				=	null, 
		@FirstName			varchar(50)		=	null,
		@LastName			varchar(50)		=	null, 
		@DisplayFirstName	varchar(50)		=	null, 
		@Gender				char(1)			=	null, 
		@QueryId			int				=	10,
		@ReturnValue		int				=	null output

)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	if(@QueryId = 10) begin goto INSERT_ITEM end;
	if(@QueryId = 20) begin goto UPDATE_ITEM end; 
	if(@QueryId = 30) begin goto DELETE_ITEM end;

    -- Add this line in case @QueryId is not any of the above IF STATEMENT
	
	goto EXIT_SECTION; 

	-- Begin: Insert Section
INSERT_ITEM:
	begin 
		insert into dbo.Person(FirstName,
					LastName, 
					CreateDate, 
					DisplayFirstName,
					Gender)

		values(		@FirstName, 
					@LastName, 
					getdate(), 
					@DisplayFirstName,
					@Gender);

		set @ReturnValue = SCOPE_IDENTITY();

		goto EXIT_SECTION; 
	end

	-- End: Insert Section

	--Begin: Update Section

UPDATE_ITEM:
	begin
		update dbo.Person	
		set FirstName = isnull(@FirstName, FirstName), 
			LastName = isnull(@LastName, LastName), 
			DisplayFirstName = isnull(@DisplayFirstName, DisplayFirstName), 
			Gender = isnull(@Gender, Gender)
		where	PersonId = @PersonId; 

		set @ReturnValue = @PersonId;

		goto EXIT_SECTION;
	end
	--End: Update Section

	--Begin: Delete Section

DELETE_ITEM:
	begin
		delete
		from	dbo.Person
		where	PersonId = @PersonId
		
		set @ReturnValue = @PersonId;

		goto EXIT_SECTION; 
	end
	
	--End: Delete Section

	--Begin: Exit Section
EXIT_SECTION:
	--End: Exit Section
END

CREATE TABLE dbo.PersonIndexExample(

PersonIndexId			int			not null identity (1,1), 
IndexName				nvarchar(50)	null, 
RandomString			nvarchar(50)	null, 
PersonId				int				null

CONSTRAINT [PK_PersonIndexId] PRIMARY KEY CLUSTERED
)
	PersonIndexId	ASC
));

--Make PersonId a Foreign Key
select * from dbo.Person



declare			@counter		int = 1,
				@counter02		int = 1;

while(@counter < 15)
	begin
		while(@counter02 < (100))
			begin
				insert into dbo.PersonIndexExample(
							IndexName,
							PersonId,
							RandomString)
				select	FirstName + 'Index' + convert(nvarchar(50), @counter02),
						@counter, 
						CONVERT(nvarchar(50), NEWID())
				from	dbo.Person
				where	PersonId = @counter02 + 1;

		end


--notes: incremetn outside coutner and resert inside counter
	set @counter02 = 1;
	set @counter = @counter +1;
end

go


select top 5 *
from		dbo.PersonIndexExample 
order by	IndexName;


create clustered index IDX_PersonIndexExample on dbo.PersonIndexExample(PersonIndexId); 
drop index IDX_PersonIndexExample on dbo.PersonIndexExample; 

select top 5 * 
from		dbo.PersonIndexExample
where		RandomString like '%4E79%'
order by	 IndexName;

create nonclustered index IDX_PersonIndexExample_IndexName_PersonId
on dbo.PersonIndexExample(IndexName, PersonId);
---Update Structure

--Common UPDATE SET

-- update	<table name>
-- set		<column name 1> = <new value>,
--			<column name 2> = <new value>
--			<colum name> = <filter value>

--UPDATE FROM
-- update		<table name 01>	
-- set			<table name 01>.<column name 01> =
--				<table name 02>.<column name B>,
--				<table name 02>.<column name 02>,
--				<table name 02>.<column name A>
-- from			<table name 01>
-- inner join	<table name 02>
-- on			<table name 01>.<column name> =
--				<table name 02>.<column name>
-- where		<table name 01>.<column name> = filter value


---METHOD 1: Global Update

select * from dbo.person

Update	dbo.Person 
set		CreateDate = getdate(),
		DisplayFirstName = FirstName;

---Method 2: Basic Update

update		dbo.Person
set			DisplayFirstName = 'Bradley'
where		PersonId = 1;

update		dbo.Person
set			DisplayFirstName = 'Douglas'
where		PersonId = 7

-- Check the records

select * from dbo.Person
where PersonId = 1

select * 
from dbo.Person
where PersonId = 7

-- METHOD 3: Update From Another Table
update		dbo.Instructor
set			CreateDate = a.CreateDate
from		dbo.Person a
inner join	dbo.Instructor b on a.PersonId = b.PersonId;




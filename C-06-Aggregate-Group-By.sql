--notes: UPDATE data to Match 

select * from dbo.Person


insert into dbo.Person (FirstName, LastName, DisplayFirstName, Gender, CreateDate)
values('Brad', 'Williams', 'Bradley', 'Male', '7/12/2014') 

insert into dbo.Person(FirstName, LastName, DisplayFirstName, Gender, CreateDate)
values('Carrie', 'Smith', 'Carrie', 'Female', '7/12/2014') 

insert into dbo.Person(FirstName, LastName, DisplayFirstName, Gender, CreateDate)
values('Chris', 'Roberts', 'Chris', 'Male', '7/12/2014') 

insert into dbo.Person(FirstName, LastName, DisplayFirstName, Gender, CreateDate)
values('Chris', 'Rogers', 'Chris', 'Male', '7/12/2014') 

insert into dbo.Person(FirstName, LastName, DisplayFirstName, Gender, CreateDate)
values('Corey', 'Sandberg', 'Corey', 'Male', '7/12/2014') 

insert into dbo.Person(FirstName, LastName, DisplayFirstName, Gender, CreateDate)
values('Dee', 'Mason', 'Dee', 'Female', '7/12/2014') 

insert into dbo.Person(FirstName, LastName, DisplayFirstName, Gender, CreateDate)
values('Doug', 'Piper', 'Doug', 'Male', '7/12/2014') 

insert into dbo.Person(FirstName, LastName, DisplayFirstName, Gender, CreateDate)
values('Kyle', 'Long', 'Kyle', 'Male', '7/12/2014') 

insert into dbo.Person(FirstName, LastName, DisplayFirstName, Gender, CreateDate)
values('Alison', 'Krause', 'Alison', 'Female', '7/12/2014')  

insert into dbo.Person(FirstName, LastName, DisplayFirstName, Gender, CreateDate)
values('Jennifer', 'Barth', 'Jennifer', 'Female', '7/12/2014')  

insert into dbo.Person(FirstName, LastName, DisplayFirstName, Gender, CreateDate)
values('Susan', 'Gilbert', 'Susan', 'Female', '7/12/2014')  

insert into dbo.Person(FirstName, LastName, DisplayFirstName, Gender, CreateDate)
values('Mitchell', 'Paige', 'Mitchell', 'Male', '7/12/2014')  


update dbo.Person set Gender = 'Male' where PersonId = 1 
update dbo.Person set Gender = 'Female' where PersonId = 2
update dbo.Person set Gender = 'Male' where PersonId = 3
update dbo.Person set Gender = 'Male' where PersonId = 4
update dbo.Person set Gender = 'Male' where PersonId = 5
update dbo.Person set Gender = 'Female' where PersonId = 6
update dbo.Person set Gender = 'Male' where PersonId = 7

update dbo.Person set DisplayFirstName = 'Brad' where PersonId = 1 
update dbo.Person set DisplayFirstName = 'Carrie' where PersonId = 2 
update dbo.Person set DisplayFirstName = 'Chris' where PersonId = 3
update dbo.Person set DisplayFirstName = 'Chris' where PersonId = 4 
update dbo.Person set DisplayFirstName = 'Corey' where PersonId = 5 
update dbo.Person set DisplayFirstName = 'Dee' where PersonId = 6
update dbo.Person set DisplayFirstName = 'Doug' where PersonId = 7

Update dbo.Person set CreateDate = '7/12/2014' where PersonId = 1
Update dbo.Person set CreateDate = '7/12/2014' where PersonId = 2
Update dbo.Person set CreateDate = '7/12/2014' where PersonId = 3
Update dbo.Person set CreateDate = '7/12/2014' where PersonId = 4
Update dbo.Person set CreateDate = '7/12/2014' where PersonId = 5
Update dbo.Person set CreateDate = '7/12/2014' where PersonId = 6
Update dbo.Person set CreateDate = '7/12/2014' where PersonId = 7

-- notes: 

select * from dbo.Person

Truncate Table dbo.Person



select	PersonId
from	dbo.Person;


select		Gender,
			FirstName,
			count(*) NameCount
from		dbo.Person
group by	Gender,
			FirstName

select		Gender,
			FirstName,
			count(*) Total
from		dbo.person
group by	Gender,
			FirstName
	
select * from dbo.Person




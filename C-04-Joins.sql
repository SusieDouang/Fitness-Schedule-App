Use FitnessSchedule01

--notes: INSERT statements to update Person table

insert into dbo.Person(FirstName, LastName, DisplayFirstName, Gender)
values ('Kyle', 'Long', 'Kyle', 'Male'); 

insert into dbo.Person(FirstName, LastName, DisplayFirstName, Gender)
values ('Alison', 'Krause', 'Ali', 'Female'); 

insert into dbo.Person(FirstName, LastName, DisplayFirstName, Gender)
values ('Jennifer', 'Barth', 'Jen', 'Female'); 

insert into dbo.Person(FirstName, LastName, DisplayFirstName, Gender)
values ('Susan', 'Gilbert', 'Susan', 'Female'); 

insert into dbo.Person(FirstName, LastName, DisplayFirstName, Gender)
values ('Mitchell', 'Paige', 'Mitch', 'Male'); 

select * from dbo.Person
select * from dbo.Instructor

--notes: simple inner join
select * from dbo.Person a 
inner join dbo.Instructor b on a.PersonId = b.PersonId;

--notes: left outer join
select * from	dbo.Person a
left outer join dbo.Instructor b on a.PersonId = b.PersonId; 

--notes: right outer join
select * from		dbo.Person a
right outer join	dbo.Instructor b on a.PersonId = b.PersonId

--notes: full outer join
select * from		dbo.Person a
full outer join		dbo.Instructor b on a.PersonId = b.PersonId;

--notes: multiple table joins
select			a.PersonId,
				a.FirstName, 
				a.LastName, 
				b.HireDate, 
				c.InstructorId, 
				c.EmailAddress, 
				d.EntityTypeName
from			dbo.Person a
inner join		dbo.Instructor b on a.PersonId = b.PersonId
left outer join	dbo.Email c on b.InstructorId = c.InstructorId
left outer join	dbo.EntityType d on c.EntityTypeId = d.EntityTypeId; 

select * from dbo.EntityType
select * from dbo.Email
select * from dbo.Person








select * from	dbo.Gym


insert into dbo.Gym
values('Ballys', null, null, 'http://www.ballys.com', null);

insert into dbo.Gym(GymName, Website, CreateDate)
values('Snap Fitness', 'http://snapfitness.com', null); 


select * from dbo.email



--notes: Using a SELECT STATEMENT to INSERT A RECORD
insert into dbo.Location(GymId, StateId, LocationName)
select 10,
		StateId,
		'Test location'
from	dbo.State
where	StateName = 'New York';

--notes: Using SELECT Statement
insert into		dbo.Email(EmailAddress, InstructorId, EntityTypeId)
select			'beth@person.com', 
				10,
				a.EntityTypeId
from			dbo.EntityType a
inner join		dbo.Entity b on a.EntityId = b.EntityId
where			b.EntityName = 'Email'
and				a.EntityTypeName = 'Personal'



insert into  dbo.Email(EmailAddress, InstructorId, EntityTypeId)
select		'beth@person.com',
			10,
			a.EntityTypeName
from		dbo.EntityType a
inner join	dbo.Entity b on a.EntityId = b.EntityId
where		b.EntityName = 'Personal'
and			a.EntityTypeName = 'Email' 





select * from dbo.Entity
select * from dbo.EntityType
select * from dbo.Email
select * from dbo.Email

--notes: UPDATE STATEMENTS
update dbo.Email set InstructorId = 4 where EmailId = 1;
update dbo.Email set InstructorId = 1 where EmailId = 2;
update dbo.Email set InstructorId = 1 where EmailId = 3;
update dbo.Email set InstructorId = 1 where EmailId = 4;
update dbo.Email set InstructorId = 2 where EmailId = 5;
update dbo.Email set InstructorId = 3 where EmailId = 6;
update dbo.Email set InstructorId = 5 where EmailId = 7;
update dbo.Email set InstructorId = 6 where EmailId = 8;
update dbo.Email set InstructorId = 7 where EmailId = 9;
update dbo.Email set InstructorId = 7 where EmailId = 10;

update dbo.Email set EntityTypeId = 2 where EmailId = 1
update dbo.Email set EntityTypeId = 1 where EmailId = 2
update dbo.Email set EntityTypeId = 2 where EmailId = 3
update dbo.Email set EntityTypeId = 2 where EmailId = 4
update dbo.Email set EntityTypeId = 2 where EmailId = 5
update dbo.Email set EntityTypeId = 1 where EmailId = 6
update dbo.Email set EntityTypeId = 2 where EmailId = 7
update dbo.Email set EntityTypeId = 2 where EmailId = 8
update dbo.Email set EntityTypeId = 2 where EmailId = 9
update dbo.Email set EntityTypeId = 1 where EmailId = 10

--notes: INSERT Statement with No Column Names

--First check to see if record has been PREVIOUSLY entered--
select * from	dbo.Person	a
inner join		dbo.Instructor b on a.PersonId = b.PersonId

select * from	dbo.Entity a
inner join		dbo.EntityType b on a.EntityId = b.EntityId
where			a.EntityName = 'Email';

select * from	dbo.Email a
where			a.InstructorId = 6;

--Enter Eric Jefferson 
--Eric's Instructor = 11
--WorkEmailEntityTypeId=11

insert into dbo.Email
values('eric@work.com', 11, 1);

select * from dbo.Email


--Query to View New Record

select * from	dbo.Person a
inner join		dbo.Instructor b on a.PersonId = b.PersonId
inner join		dbo.Email c on b.InstructorId = c.InstructorId
where			b.InstructorId = 1;

select * from dbo.Email

--INSERT Statement for Column Names

--Query to see if she already has a work email 

select * from   dbo.Person a
inner join		dbo.Instructor b on a.PersonId = b.PersonId
left outer join	dbo.Email c on b.InstructorId = c.InstructorId
where			a.LastName = 'Fandel';



--------------------------------------------------------------------------------------------------------

select * from	dbo.Entity a
inner join		dbo.EntityType b on a.EntityId = b.EntityId
where			a.EntityName = 'Email';

select * from	dbo.Email a
where			a.InstructorId = 11;

insert into dbo.Email(EmailAddress, EmailId)
values ('eric@work.com', 11 );

select * from dbo.email

update dbo.Email set InstructorId = 11 where EmailAddress = 'eric@work.com'
update dbo.Email set EntityTypeId = 4 where InstructorId = 4

insert into dbo.Email(EmailAddress, InstructorId, EntityTypeId)
values('beth@work', 10, 10);

select 
* from		dbo.person a
inner join	dbo.Instructor b on a.personid = b. personid
inner join	dbo.email c on b. InstructorId = c.InstructorId
where		b.InstructorId = 8;

select * from dbo.Person









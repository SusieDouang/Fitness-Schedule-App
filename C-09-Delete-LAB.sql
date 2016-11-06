Use FitnessSchedule

alter table dbo.Person add IsDeleted bit not null default 0; 

insert into dbo.Person(FirstName, LastName) values('Ricky', 'Rubio');
insert into dbo.Person(FirstName, LastName) values('Zach', 'LaVine');
insert into dbo.Person(FirstName, LastName) values('Andrew', 'Wiggins');
insert into dbo.Person(FirstName, LastName) values('Karl-Anthony', 'Towns');

 * from dbo.Person

--Method 2: Hard Delete

delete
from	dbo.Person
where	PersonId = 13

select * from dbo.Person

--Method 3: Soft Delete - keeps the record in the table. 

update	dbo.Person
set		IsDeleted = 1
where	PersonId in (14,15,16); 


--notes: Relationships create Entity Table
create table dbo.Person(
	PersonId	int				not null identity(1,1), 
	FirstName	nvarchar(50)	null,
	LastName	nvarchar(50)	null, 
	CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED
	(
		PersonId ASC
	)
);

select * from dbo.Instructor;
select * from dbo.Person;

truncate table dbo.Person 


--notes: migrate and insert records into dbo.person
insert into dbo.Person (FirstName, LastName) values('Brad', 'Williams');
insert into dbo.Person (FirstName, LastName) values('Carrie', 'Smith');
insert into dbo.Person (FirstName, LastName) values('Chris', 'Roberts');
insert into dbo.Person (FirstName, LastName) values('Chris', 'Rogers');
insert into dbo.Person (FirstName, LastName) values('Corey', 'Sandberg');
insert into dbo.Person (FirstName, LastName) values('Dee', 'Mason');
insert into dbo.Person (FirstName, LastName) values('Doug', 'Piper');

update dbo.Instructor set HireDate = '1/1/2010' where InstructorId = 1
update dbo.Instructor set HireDate = '5/1/2011' where InstructorId = 3
update dbo.Instructor set HireDate = '4/1/2011' where InstructorId = 4
update dbo.Instructor set Hiredate = '2/10/2010' where InstructorId = 5
update dbo.Instructor set HireDate = '3/15/2014' where InstructorId = 6
update dbo.Instructor set HireDate = '5/20/2015' where InstructorId = 7
update dbo.Instructor set HireDate = '4/12/2012' where InstructorId = 8


update dbo.Instructor set PersonId = 1 where InstructorId = 1;
update dbo.Instructor set PersonId = 2 where InstructorId = 3;
update dbo.Instructor set PersonId = 3 where InstructorId = 4;
update dbo.Instructor set PersonId = 4 where InstructorId = 5;
update dbo.Instructor set PersonId = 5 where InstructorId = 6;
update dbo.Instructor set PersonId = 6 where InstructorId = 7;
update dbo.Instructor set PersonId = 7 where InstructorId = 8;


select * from dbo.Person a
inner join dbo.Instructor b on a.PersonId = b.PersonId;


--notes: Foreign Key to Instructor Table
ALTER TABLE	dbo.Instructor 
ADD CONSTRAINT FK_Instructor_PersonId foreign key(PersonId) references dbo.Person(PersonId);

--notes: attempt to add an instructor without a person record
insert into dbo.Instructor(HireDate, PersonId)
values('1/1/2000', 20);

select * from dbo.Instructor
select * from dbo.Email

--notes: many to many, add Foreign Keys
ALTER TABLE dbo.InstructorFitnessClass
ADD CONSTRAINT FK_InstructorFitnessClass_InstructorId
FOREIGN KEY(InstructorId)REFERENCES dbo.Instructor(InstructorId)

ALTER TABLE dbo.InstructorFitnessClass
ADD CONSTRAINT FK_InstructorFitnessClass_FitnessClassId
FOREIGN KEY(FitnessClassId)REFERENCES dbo.FitnessClass(FitnessClassId)

select * from dbo.Instructor;
select * from dbo.InstructorFitnessClass
select * from dbo.FitnessClass



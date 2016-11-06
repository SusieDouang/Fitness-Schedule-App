--notes: Normalization - Delete record and enter date
truncate table dbo.Instructor;

insert into dbo.Instructor(FirstName, LastName, EmailAddress, HireDate, FitnessClassName, FitnessClassCategory)
values('Brad','Williams', 'brad@brad.com, brad@hotmail.com', '1/1/2010', 'Bootcamp', 'Athletic Training');

insert into dbo.Instructor(FirstName, LastName, EmailAddress, HireDate, FitnessClassName, FitnessClassCategory)
values('Brad','Williams', 'brad@gmail.com', '4/1/2013', 'Studio Cycling', 'Cycle');

insert into dbo.Instructor(FirstName, LastName, EmailAddress, HireDate, FitnessClassName, FitnessClassCategory)
values('Carrie','Smith', 'carriesmith@hotmail.com', '5/1/2011', 'Intervals', 'Cycle');

insert into dbo.Instructor(FirstName, LastName, EmailAddress, HireDate, FitnessClassName, FitnessClassCategory)
values('Chris','Roberts', 'chris@roberts.com', '4/1/2011', 'Bootcamp', 'Athletic Training');

insert into dbo.Instructor(FirstName, LastName, EmailAddress, HireDate, FitnessClassName, FitnessClassCategory)
values('Adrienne','Roger', 'adrienne@gmail.com', '2/10/2010', 'Precision Running', 'Running');

insert into dbo.Instructor(FirstName, LastName, EmailAddress, HireDate, FitnessClassName, FitnessClassCategory)
values('Corey','Sandberg', 'corey@gmail.com', '3/15/2014', 'Tread and Shred', 'Running');

insert into dbo.Instructor(FirstName, LastName, EmailAddress, HireDate, FitnessClassName, FitnessClassCategory)
values('Dee','Mason', 'dee@hotmail.com', '5/20/2015', 'Restorative Yoga', 'Yoga');

insert into dbo.Instructor(FirstName, LastName, EmailAddress, HireDate, FitnessClassName, FitnessClassCategory)
values('Doug','Piper', 'doug@piper.com', '4/12/2012', 'Total Conditioning', 'Athletic Training');

insert into dbo.Instructor(FirstName, LastName, EmailAddress, HireDate, FitnessClassName, FitnessClassCategory)
values('Doug','Piper', 'doug@gmail.com', '4/12/2012', 'Vinyasa', 'Yoga');

--notes: Normalization - Delete record and enter date

use FitnessScheduleNew
select * from dbo.Instructor

--notes: Atomic Value
update dbo.Instructor
set		EmailAddress = 'brad@brad.com'
where	InstructorId = 1;

insert into dbo.Instructor(FirstName, LastName, EmailAddress, HireDate, FitnessClassName, FitnessClassCategory)
values('Brad', 'Williams', 'brad@hotmail', '1/1/2010', 'Bootcamp', 'Athletic Training');

--notes: insert FitnessClass table

CREATE TABLE dbo.FitnessClass
(
FitnessClassId		int				not null identity (1,1),
FitnessClassName	nvarchar(200)	null,
CategoryName		nvarchar(100)	null
)
ALTER TABLE dbo.FitnessClass
ADD CONSTRAINT PK_FitnessClassId primary key(FitnessClassId);


--notes: insert data into table FitnessClass

insert into dbo.FitnessClass(FitnessClassName, CategoryName)
values('Bootcamp', 'Athletic Training');

insert into dbo.FitnessClass(FitnessClassName, CategoryName)
values('Intervals', 'Cycle');

insert into dbo.FitnessClass(FitnessClassName, CategoryName)
values('Precision Running', 'Running');

insert into dbo.FitnessClass(FitnessClassName, CategoryName)
values('Restorative Yoga', 'Yoga');

insert into dbo.FitnessClass(FitnessClassName, CategoryName)
values('Studio Cycling', 'Cycle');

insert into dbo.FitnessClass(FitnessClassName, CategoryName)
values('Total Conditioning', 'Athletic Training'); 

insert into dbo.FitnessClass(FitnessClassName, CategoryName)
values('Tread and Shred', 'Running');

insert into dbo.FitnessClass(FitnessClassName, CategoryName)
values('Vinyasa', 'Yoga');

select * from dbo.Instructor
select * from dbo.FitnessClass

--notes: create Email Table
CREATE TABLE dbo.Email(
EmailId			int				not null identity (1,1),
EmailAddress	nvarchar(100)	null
)
ALTER TABLE dbo.Email
ADD CONSTRAINT [PK_EmailId]	PRIMARY KEY(EmailId);

select * from dbo.Email
select * from dbo.EmailType

--notes insert email records
insert into dbo.Email(EmailAddress) values('adrienne@gmail.com');
insert into dbo.Email(EmailAddress) values('brad@brad.com');
insert into dbo.Email(EmailAddress) values('brad@gmail.com');
insert into dbo.Email(EmailAddress) values('brad@hotmail.com');
insert into dbo.Email(EmailAddress) values('carriesmith@hotmail.com');
insert into dbo.Email(EmailAddress) values('chris@roberts.com');
insert into dbo.Email(EmailAddress) values('corey@gmail.com');
insert into dbo.Email(EmailAddress) values('dee@hotmail.com');
insert into dbo.Email(EmailAddress) values('doug@gmail.com');
insert into dbo.Email(EmailAddress) values('doug@piper.com');


--notes: add instructor to dbo.Email (Act of Normalization)
ALTER TABLE dbo.Email add InstructorId int null;

update dbo.Email set InstructorId = 5 where EmailId = 1;
update dbo.Email set InstructorId = 1 where EmailId = 2;
update dbo.Email set InstructorId = 1 where EmailId = 3;
update dbo.Email set InstructorId = 1 where EmailId = 4;
update dbo.Email set InstructorId = 3 where EmailId = 5;
update dbo.Email set InstructorId = 4 where EmailId = 6;
update dbo.Email set InstructorId = 6 where EmailId = 7;
update dbo.Email set InstructorId = 7 where EmailId = 8
update dbo.Email set InstructorId = 8 where EmailId = 9;
update dbo.Email set InstructorId = 8 where EmailId = 10;


--notes: create email type table
create table dbo.EmailType(
	EmailTypeId		int				not null identity(1,1), 
	EmailTypeName	nvarchar(50)	null,
	CONSTRAINT [PK_EmailType] PRIMARY KEY CLUSTERED
(
	EmailTypeId ASC
	)
);

--notes: add emailtypeId to Email
alter table dbo.Email add EmailTypeId int null;

insert into dbo.EmailType(EmailTypeName) values('Work');
insert into dbo.EmailType(EmailTypeName) values('Personal');

update dbo.Email set EmailTypeId = 2 where EmailId = 1;
update dbo.Email set EmailTypeId = 1 where EmailId = 2;
update dbo.Email set EmailTypeId = 2 where EmailId = 3;
update dbo.Email set EmailTypeId = 2 where EmailId = 4;
update dbo.Email set EmailTypeId = 2 where EmailId = 5;
update dbo.Email set EmailTypeId = 1 where EmailId = 6;
update dbo.Email set EmailTypeId = 2 where EmailId = 7;
update dbo.Email set EmailTypeId = 2 where EmailId = 8;
update dbo.Email set EmailTypeId = 2 where EmailId = 9;
update dbo.Email set EmailTypeId = 1 where EmailId = 10;

--notes: create Join table - relates 2 tables in order to create a one-to-many relationship between the two tables

CREATE TABLE dbo.InstructorFitnessClass(
	InstructorFitnessClassId	int		not null identity(1,1), 
	InstructorId				int		not null, 
	FitnessClassId				int		not null
	CONSTRAINT [PK_InstructorFitnessClass] PRIMARY KEY CLUSTERED
	(
	InstructorFitnessClassId ASC
	)
);

insert into dbo.InstructorFitnessClass(InstructorId, FitnessClassId) values (1,1);
insert into dbo.InstructorFitnessClass(InstructorId, FitnessClassId) values (1,5);
insert into dbo.InstructorFitnessClass(InstructorId, FitnessClassId) values (3,2);
insert into dbo.InstructorFitnessClass(InstructorId, FitnessClassId) values (4,1);
insert into dbo.InstructorFitnessClass(InstructorId, FitnessClassId) values (5,3);
insert into dbo.InstructorFitnessClass(InstructorId, FitnessClassId) values (6,7);
insert into dbo.InstructorFitnessClass(InstructorId, FitnessClassId) values (7,4);
insert into dbo.InstructorFitnessClass(InstructorId, FitnessClassId) values (8,6);
insert into dbo.InstructorFitnessClass(InstructorId, FitnessClassId) values (8,8);


truncate table dbo.InstructorFitnessClass
select * from dbo.InstructorFitnessClass

--notes: ADD column
ALTER TABLE dbo.InstructorFitnessClass
ADD FitnessClassId	int	not null

select * from dbo.Instructor
select * from dbo.InstructorFitnessClass
select * from dbo.FitnessClass

--notes: CREATE category table
CREATE TABLE dbo.Category(
CategoryId		int				not null identity(1,1), 
CategoryName	nvarchar(50)	null, 
CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED
(
	CategoryId ASC
)
);

--notes: INSERT records into category
insert into dbo.Category(CategoryName) values('Athletic Training');
insert into dbo.Category(CategoryName) values('Cycle');
insert into dbo.Category(CategoryName) values('Running');
insert into dbo.Category(CategoryName) values('Yoga');

--notes: COMBINE/JOIN Fitness and CategoryId
ALTER TABLE dbo.FitnessClass ADD CategoryId int null;

--notes: UPDATE category Id
update dbo.FitnessClass set CategoryId = 1 where FitnessClassId = 1;
update dbo.FitnessClass set CategoryId = 2 where FitnessClassId = 2;
update dbo.FitnessClass set CategoryId = 3 where FitnessClassId = 3;
update dbo.FitnessClass set CategoryId = 4 where FitnessClassId = 4;
update dbo.FitnessClass set CategoryId = 2 where FitnessClassId = 5;
update dbo.FitnessClass set CategoryId = 1 where FitnessClassId = 6;
update dbo.FitnessClass set CategoryId = 3 where FitnessClassId = 7;
update dbo.FitnessClass set CategoryId = 4 where FitnessClassId = 8;

select * from dbo.FitnessClass
select * from dbo.Category

--notes: CREATE enitity type table that stores the descriptors and the categories for fitness table
CREATE TABLE dbo.EntityType(
	EntityTypeId		int				not null identity(1,1), 
	EntityTypeName		nvarchar(100)	null, 
	CONSTRAINT [PK_EntityType] PRIMARY KEY CLUSTERED
	(
		EntityTypeId ASC
	)
);

insert into dbo.EntityType(EntityTypeName) values('Work');
insert into dbo.EntityType(EntityTypeName) values('Personal');
insert into dbo.EntityType(EntityTypeName) values('Athletic Training');
insert into dbo.EntityType(EntityTypeName) values('Cycle');
insert into dbo.EntityType(EntityTypeName) values('Running');
insert into dbo.EntityType(EntityTypeName) values('Yoga');

select * from dbo.EntityType

--notes: Create Lookup Table to define EntityTable

CREATE TABLE dbo.Entity(
	EntityId		int				not null identity(1,1), 
	EntityName		nvarchar(100)	null,
	CONSTRAINT [PK_Entity] PRIMARY KEY CLUSTERED
	(
		EntityId ASC
)
);

insert into dbo.Entity(EntityName) values('Email');
insert into dbo.Entity(EntityName) values('Fitness-Class-Category');

--notes: one record in the entity table can be associate to the entitytype table

select * from dbo.Entity
select * from dbo.EntityType

select * from dbo.FitnessClass

--notes: Complex Normalization

select		a.InstructorId, 
			a.FirstName, 
			a.LastName, 
			FitnessClassName,
			EntityTypeName as 'Category'
from		dbo.Instructor a
inner join	dbo.InstructorFitnessClass c on a.InstructorId = c.InstructorId
inner join	dbo.FitnessClass d on c.FitnessClassId = d.FitnessClassId
inner join	dbo.EntityType e on d.EntityTypeId = e.EntityTypeId
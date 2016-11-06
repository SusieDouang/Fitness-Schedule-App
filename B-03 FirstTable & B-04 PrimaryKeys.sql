--notes: CREATE TABLE


--notes: INSERT records

insert into dbo.Instructor(FirstName, LastName, EmailAddress, HireDate)
values('Brad', 'Williams', 'brad@brad.com', '1/1/2010');
insert into dbo.Instructor(FirstName, LastName, EmailAddress, HireDate)
values('Brad', 'Williams', 'brad@gmail.com', '1/1/2010');
insert into dbo.Instructor(FirstName, LastName, EmailAddress, HireDate)
values('Carrie', 'Smith', 'carriesmith@hotmail.com', '5/1/2010');
insert into dbo.Instructor(FirstName, LastName, EmailAddress, HireDate)
values('Chris','Roberts','chris@roberts.com', '4/1/2011');

select * from dbo.Instructor

-- notes: ALTER TABLE for Instructor ADD PRIMARY KEY

alter table dbo.Instructor alter column FirstName varchar(50) not null;
alter table dbo.Instructor alter column LastName varchar(50) not null; 
alter table dbo.Instructor alter column EmailAddress varchar(50) not null;

alter table dbo.Instructor
add constraint PK_Instructor primary key(FirstName, LastName, EmailAddress);

-- notes: INSERT statement (for Error)
insert into dbo.Instructor(FirstName, LastName, EmailAddress, HireDate)
values('Chris', 'Roberts', 'chris@roberts.com', '4/1/2011');

-- notes: DELETE all records from Instructor table
truncate table dbo.Instructor

-- notes: ALTER TABLE - create PRIMARY KEY using T-SQL
ALTER TABLE dbo.Student
ADD CONSTRAINT PK_Student_StudentId PRIMARY KEY (StudentId);


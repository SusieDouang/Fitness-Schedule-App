Use FitnessSchedule01

---Numeric Value

select	InstructorId as Id, 
		Hiredate,
		Termdate
from	dbo.Instructor
where	InstructorId = 1 



--Text Value

select	PersonId, 
		FirstName, 
		LastName
from	dbo.Person
where	FirstName = 'Brad'


--multiple criterion

select	PersonId
		FirstName,
		LastName	
from	dbo.Person
where	FirstName = 'Chris'

--Filtering Results

select	PersonId, 
		FirstName, 
		LastName
from	dbo.Person
where	FirstName = 'Chris'
and		LastName = 'Rogers'

--Not Equal

select	PersonId, 
		FirstName, 
		LastName
from	dbo.Person
where	PersonId <> 1;


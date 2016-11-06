--		count only [Subquery within in a Query] - Just the count of the instructors
	(select count(*) from dbo.Instructor)

--		Both queries - total count and dbo.Person table 
--		[Subquery within a SELECT CLAUSE] creating what is called a column expression.
select *,
	(select count(*) from dbo.Instructor)
from dbo.Person;

--		[Subquery with two expressions - can be used alone, but not with Select Statement]
	(select count(*) Total, min(PersonId) Person from dbo.Instructor as InstructorCount)

-- Only have a scalar (single) value in a subquery within a select clause
	(select PersonId from dbo.Instructor)

--		[Subquery JOINED TO OUTER QUERY] can be joined to the outer query by specifying a relation in WHERE clause

select *, 
	(	select	HireDate
		from	dbo.Instructor aa
		where	aa.PersonId = a.PersonId) as InstructorCount
from	dbo.Person a; 

--		[FROM Clause] is called a derived table - can return more than one record [opposite of the SELECT CLAUSE]

		--[SUBQUERY]
select *
from	(	select *
			from dbo.Person) a
---			---			---			---			---

select	*
from	(	select	a.FirstName,
					a.LastName
			from dbo.Person a
			inner join dbo.Instructor b on a.PersonId = b.PersonId) c
---			---			---			---			---

select		aa.FirstName,
			aa.LastName,
			aa.PersonId
from		(	select  a.FirstName, 
						a.LastName,
						a.PersonId 
				from	dbo.Person a
				inner join dbo.Instructor b on a.PersonId = b.PersonId) aa
				inner join dbo.Instructor bb on aa.PersonId = bb.PersonId;

--		[WHERE Clause] is called a derived table - can return more than one record [opposite of the SELECT CLAUSE]
		
		--[SUBQUERY]
select *
from		dbo.Instructor
where		PersonId	in	(	select	PersonId
								from	dbo.Person);
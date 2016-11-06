Use FitnessScheduleNew

--notes: ORDER BY VARCHAR
select * from	dbo.Person
where			PersonId > 1
order by		FirstName desc;

--			a.<column name>,
--			a.<column name>
--			<table name> a
--			a.<column name>,
--			a.<column name> asc | desc

--notes: ORDER BY PersonId [int]
select * from	dbo.Person
order by		PersonId asc;

--notes: ORDER BY datetime field
select * from	dbo.Person a
inner join		dbo.Instructor b on a.PersonId = b.PersonId
order by		b.HireDate;

--notes: ORDER BY multiple columns [Order by FirstName & LastName]
select * from	dbo.Person a
inner join		dbo.Instructor b on a.PersonId = b.PersonId
order by		FirstName,
				LastName,
				HireDate;

--notes: Order by will come after the where clase and from clase (if there are any), by default it's ASC and there could be multiple columns
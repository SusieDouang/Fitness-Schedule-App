--Create View

CREATE VIEW <schema_name, sysname, dbo>.<view_name, sysname, Top10Sales> AS 
<select_statement,	, SELECT TOP 10 * FROM Sales.SalesOrderHeader ORDER BY total DESC>

--Notes: Stored query as Virtual Table in View
select * from dbo.Person

--Notes: Use new View in query
select * from dbo.vw_Instructor;


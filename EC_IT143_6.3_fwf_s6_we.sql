----How to extract the first name from the contact name
--A: lets ask sql
--customername=Alejandra Camino -> Alejandra
--google search "How to extract the first name from combined name tsql stacked overflow"
-- https://stackoverflow.com/questions/5145791/extracting-first-name-and-last-name"
select t.ContactName
, left (t.ContactName, CHARINDEX(' ', t.ContactName + ' ')- 1) AS First_name
, dbo.udf_parse_firstname (t.ContactName) as first_name2
from dbo.t_w3_schools_customers as t
order by 1;
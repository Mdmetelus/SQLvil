
select country, city, customerid as id, customerName name, contactName 
from customers
where country = 'Venezuela' and city = 'Caracas'
where city like 'm%'
where city like 'be%'
where country like '%er%'
where city like '_er%'
where contactname like '% Moos'
where id > 5
where id < 5

order by contactName, country desc, city desc

        
-- Data cleaning process --


-- Selecting necessary fields from table FactInternetSales -- 


select *
from FactInternetSales


select ProductKey, 
orderdatekey, 
duedatekey, 
shipdatekey,
customerkey,
SalesOrderNumber,
salesamount
from FactInternetSales
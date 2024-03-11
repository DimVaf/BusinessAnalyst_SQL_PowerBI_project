-- Data Cleaning for DimCustomer table (Dimension table with customer data) --


SELECT [CustomerKey]
      ,[GeographyKey]
      ,[CustomerAlternateKey]
      ,[Title]
      ,[FirstName]
      ,[MiddleName]
      ,[LastName]
      ,[NameStyle]
      ,[BirthDate]
      ,[MaritalStatus]
      ,[Suffix]
      ,[Gender]
      ,[EmailAddress]
      ,[YearlyIncome]
      ,[TotalChildren]
      ,[NumberChildrenAtHome]
      ,[EnglishEducation]
      ,[SpanishEducation]
      ,[FrenchEducation]
      ,[EnglishOccupation]
      ,[SpanishOccupation]
      ,[FrenchOccupation]
      ,[HouseOwnerFlag]
      ,[NumberCarsOwned]
      ,[AddressLine1]
      ,[AddressLine2]
      ,[Phone]
      ,[DateFirstPurchase]
      ,[CommuteDistance]
  FROM [AdventureWorksDW2019].[dbo].[DimCustomer]




  --  Selecting necessary columns  --


    select customerkey,
		 geographykey,
		 firstname,
		 lastname,
		 concat(firstname, ' ', lastname) as Full_Name,
		 yearlyincome,
		 case gender
		 when  'M' then 'Male'       /* Cateogrizing customer gender to 'Male' and 'Female' using the case statement  */
		 else 'Female'
		 end as Gender,
		 datefirstpurchase
	from dimcustomer



-- Join with the table DimGeography --


	  select customerkey,
		 c.geographykey,
		 firstname,
		 lastname,
		 concat(firstname, ' ', lastname) as Full_Name,
		 yearlyincome,
		 case gender
		 when  'M' then 'Male'
		 else 'Female'
		 end as Gender,
		  datefirstpurchase,
		 city,
		 EnglishCountryRegionName
		 from dimcustomer c left join DimGeography g         -- Joining the tables using Left Join clause -- 
		on c.geographykey = g.geographykey
		order by CustomerKey asc          -- Ordering records by ascending order -- 




-- Cleansed DIM_Customers Table --
SELECT 
  [CustomerKey] 
  --,[GeographyKey]
  -- ,[CustomerAlternateKey]
  -- ,[Title]
  , 
  [FirstName] as 'First Name' 
  -- ,[MiddleName]
  ,[LastName] as 'Last Name', 
  [FirstName] + ' ' + [LastName] as 'Full Name' 
  --,[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  -- ,[Suffix]
  ,case [Gender] when 'M' then 'Male' when 'F' then 'Female' end as Gender 
  -- ,[EmailAddress]
  -- ,[YearlyIncome]
  -- ,[TotalChildren]
  -- ,[NumberChildrenAtHome]
  -- ,[EnglishEducation]
  -- ,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  -- ,[NumberCarsOwned]
  --,[AddressLine1]
  --,[AddressLine2]
  --,[Phone]
  --,[CommuteDistance]
  ,g.City as 'Customer City' -- Joined in Customer City from Geography Table
  ,[DateFirstPurchase] as 'Date First Purchase' 
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] c 
  left join DimGeography as g on c.GeographyKey = g.GeographyKey 
order by 
  CustomerKey;

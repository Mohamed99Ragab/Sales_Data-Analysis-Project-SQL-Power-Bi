-- Cleansed DIM_Products Table --
SELECT [ProductKey]
      ,[ProductAlternateKey] as 'Product Item Code'
    -- ,[ProductSubcategoryKey]
    -- ,[WeightUnitMeasureCode]
    -- ,[SizeUnitMeasureCode]
      ,[EnglishProductName] as 'Product Name'
	  ,ps.EnglishProductSubcategoryName as 'Product Subcategory' -- Joined in from Sub Category Table
	  ,pc.EnglishProductCategoryName as 'Product Category'                       -- Joined in from Category Table
    --,[SpanishProductName]
    --,[FrenchProductName]
    -- ,[StandardCost]
    -- ,[FinishedGoodsFlag]
      ,[Color] as 'product Color'
    -- ,[SafetyStockLevel]
    -- ,[ReorderPoint]
    -- ,[ListPrice]
      ,[Size] as 'Product Size'
    --,[SizeRange]
    --,[Weight]
    --,[DaysToManufacture]
      ,[ProductLine] as 'Product Line'
    --,[DealerPrice]
    --,[Class]
    --,[Style]
      ,[ModelName] as 'Product Model Name'
    --,[LargePhoto]
      ,[EnglishDescription] as 'Product Description'
    --,[FrenchDescription]
    --,[ChineseDescription]
    --,[ArabicDescription]
    --,[HebrewDescription]
    --,[ThaiDescription]
    --,[GermanDescription]
    --,[JapaneseDescription]
    --,[TurkishDescription]
    --,[StartDate]
    --,[EndDate]
      ,ISNULL([Status] ,'Outdated') as 'Product Status'
  FROM [AdventureWorksDW2019].[dbo].[DimProduct] as p
  left join DimProductSubcategory as ps on p.ProductSubcategoryKey = ps.ProductSubcategoryKey
  left join DimProductCategory as pc on ps.ProductCategoryKey = pc.ProductCategoryKey
  order by ProductKey;
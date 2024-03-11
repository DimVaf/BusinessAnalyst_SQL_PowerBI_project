-- Data cleaning process --


-- Data Cleaning for DimProduct (Dimension table of products data)


-- Selecting necessary columns from table DimProduct -- 


select *
from DimProduct


select ProductKey, productalternatekey as Produst_Item_Code, 
EnglishProductName as Porduct_Name,
color as product_color,
size as product_size,
ProductLine as Product_line,
modelname as Product_model_name,
EnglishDescription as Product_description,
status as Product_satus 
from DimProduct




-- Join with table DimProductSubCategory and DimProductCategory --


select ProductKey,
productalternatekey as Procuct_Item_Code,
EnglishProductName as Porduct_Name,
englishproductcategoryname as category_name,
englishproductsubcategoryname as subcategory_name,
color as product_color,
size as product_size,
ProductLine as Product_line,
modelname as Product_model_name,
EnglishDescription as Product_description,
isnull(status, 'Outdate') as Product_status
from DimProduct dp left join DimProductsubCategory dpsc
	on dp.ProductSubcategoryKey = dpsc.ProductSubcategoryKey
left join DimProductCategory dpc
	on dpsc.ProductCategoryKey = dpc.ProductCategoryKey






select *
from DimProductSubcategory





select *
from DimProductCategory
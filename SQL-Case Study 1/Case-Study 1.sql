use casestudy1;

select * from fact;
select * from Product;

-- 1. Display the number of states present in the LocationTable.
select count(distinct state) as states from Location;
-- 2. How many products are of regular type?
select count (Product) from product where type = 'Regular';

-- 3. How much spending has been done on marketing of product ID 1?
select sum(Marketing) as total_marketing from fact where ProductId = 1;

-- 4. What is the minimum sales of a product?
select MIN(Sales) from fact;

-- 5. Display the max Cost of Good Sold (COGS). 
select max(COGS) from fact;

-- 6. Display the details of the product where product type is coffee. 
select * from product where Product_Type = 'Coffee';

-- 7. Display the details where total expenses are greater than 40. 
Select * from fact where Total_Expenses > 40;

-- 8. What is the average sales in area code 719?
select AVG(Sales) from fact where Area_Code = 719;

-- 9. Find out the total profit generated by Colorado state.
select sum(Profit) as Total_Profit from fact f left join Location l on f.Area_Code = l.Area_Code where l.State = 'Colorado';

-- 10. Display the average inventory for each product ID. 
select AVG(Inventory) from fact group by ProductId Order by ProductId;

-- 11. Display state in a sequential order in a Location Table. 
select Distinct(State) from Location Order By State;

-- 12. Display the average budget of the Product where the average budget margin should be greater than 100. 
select ProductId, AVG(Budget_Margin) from fact group by ProductId Having AVG(Budget_Margin) > 100 order by ProductId;


-- 13. What is the total sales done on date 2010-01-01?
select SUM(Sales) from fact where Date = '2010-01-01';

-- 14. Display the average total expense of each product ID on an individual date. 
select Date, ProductId, AVG(Total_Expenses) AS AVG_Total_Expense from fact group by Date, ProductId Order By Date, ProductId;

-- 15. Display the table with the following attributes such as date, productID, product_type, product, sales, profit, state, area_code. 
select f.date, f.ProductId, p.Product_Type, p.Product, f.Sales, f.Area_Code, l.[State], f.Profit from fact f inner join [Location] l on f.Area_Code = l.Area_Code inner join Product p on f.ProductId = p.ProductId; 

-- 16. Display the rank without any gap to show the sales wise rank. 
SELECT Sales,
       DENSE_RANK() OVER (ORDER BY Sales DESC) AS sales_rank
FROM fact;

-- 17. Find the state wise profit and sales. 
Select l.[State], SUM(f.Profit) AS Profit , SUM(f.Sales) AS Sales from fact f inner join Location l on f.Area_Code = l.Area_Code GROUP BY l.[State];

-- 18. Find the state wise profit and sales along with the productname. 
Select l.[State], p.Product, SUM(f.Profit) AS Profit , SUM(f.Sales) AS Sales from fact f inner join Location l on f.Area_Code = l.Area_Code Inner join Product p on f.ProductId = p.ProductId 
GROUP BY l.[State], p.Product
ORDER BY l.[State];


-- 19. If there is an increase in sales of 5%, calculate the increasedsales. 
select ProductId, Sales, Sales * 1.05 as increasedsales from fact;

-- 20. Find the maximum profit along with the product ID and producttype.
select f.ProductId, p.Product_Type, Max(f.Profit) AS MAX_profit from fact f inner join Product p on f.ProductId = p.ProductId group by f.ProductId, p.Product_Type order by f.ProductId;


-- 21. Create a stored procedure to fetch the result according to the product type from Product Table. 
Create procedure FetchProductsByType @Type NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;
    SELECT 
        ProductId,
        Product, Type,
        Product_Type FROM Product
    WHERE 
        Product_Type = @Type;
END;

EXEC FetchProductsByType @Type = 'Coffee';


-- 22. Write a query by creating a condition in which if the total expenses is lessthan 60 then it is a profit or else loss. 
SELECT
    CASE
        WHEN Total_Expenses < 60 THEN 'Profit'
        ELSE 'Loss'
    END AS ProfitOrLoss
FROM
    fact;


-- 23. Give the total weekly sales value with the date and product IDdetails. Use roll-up to pull the data in hierarchical order. 
SELECT 
    CASE 
        WHEN GROUPING(Year(Date)) = 1 THEN 'Total'
        ELSE CAST(YEAR(Date) AS VARCHAR)
    END AS Year,
    CASE 
        WHEN GROUPING(DATEPART(WEEK, Date)) = 1 THEN 'Total'
        ELSE CAST(DATEPART(WEEK, Date) AS VARCHAR)
    END AS Week,
    COALESCE(CAST(ProductId AS VARCHAR), 'Total') AS ProductId,
    SUM(Sales) AS TotalSales
FROM fact
GROUP BY 
    ROLLUP(YEAR(Date), DATEPART(WEEK, Date), ProductId)
ORDER BY 
    GROUPING(Year(Date)), Year, GROUPING(DATEPART(WEEK, Date)), DATEPART(WEEK, Date), GROUPING(ProductId), ProductId;


-- 24. Apply union and intersection operator on the tables which consist of attribute area code.
Select Area_Code from fact union Select Area_Code from Location;

Select Area_Code from fact intersect Select Area_Code from Location;

-- 25. Create a user-defined function for the product table to fetch a particular product type based upon the user's preference. 
create function getproductsbytype (@inputType NVARCHAR(100))
returns table as
return (
	select ProductId, Product, Product_Type
	from Product
	where Type = @inputType );

select * from getproductsbytype('Regular');

-- 26. Change the product type from coffee to tea where product ID is 1 and undo it. 
begin transaction;

update Product set Product_Type = 'Tea' where ProductId = 1;

select * from Product;

rollback transaction;

select * from Product;


-- 27. Display the date, product ID and sales where total expenses are between 100 to 200. 
select Date, ProductId, Sales from fact where Total_Expenses between 100 and 200;


-- 28. Delete the records in the Product Table for regular type.  
delete from Product where Type = 'Regular';

-- 29. Display the ASCII value of the fifth character from the column Product.
select ascii(substring(Product,5,1)) as ascii_value from Product;
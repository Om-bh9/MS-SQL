select * from data;

-- Data Cleaning
-- 1. Removing Duplicates
-- 2. Standardize the data
-- 3. Dealing with Null values or Blank Values
-- 4. Removing any columns or rows that are not necessary


-- Creating Stagging  table

SELECT * into layoffs_stagging from data;

select * from layoffs_stagging;

-- Checking duplicates
	SELECT *, ROW_NUMBER() OVER (PARTITION BY company, location, industry, total_laid_off, percentage_laid_off, date ORDER BY (SELECT NULL)) AS row_num
	FROM layoffs_stagging;

with duplicates as 
 ( SELECT *, ROW_NUMBER() OVER (PARTITION BY company, location, industry, total_laid_off, percentage_laid_off, date ORDER BY (SELECT NULL)) AS row_num
	FROM layoffs_stagging) 
	select * from duplicates where row_num > 1;

--Comfirming results once
select * from layoffs_stagging where company = 'Oda';

select * from layoffs_stagging where company = 'Casper';



with duplicates as 
 ( SELECT *, ROW_NUMBER() OVER (PARTITION BY company, location, industry, total_laid_off,percentage_laid_off, date, stage, country, funds_raised_millions ORDER BY (SELECT NULL)) AS row_num
	FROM layoffs_stagging) 
	select * from duplicates where row_num > 1;


-- Deleting the duplicates
WITH CTE AS (
    SELECT *,
           ROW_NUMBER() OVER (PARTITION BY company, location, industry, total_laid_off, percentage_laid_off, date ORDER BY (SELECT NULL)) AS row_num
    FROM layoffs_stagging
)
DELETE FROM CTE WHERE row_num > 1;


-- 2. Standardize the Data

select * from layoffs_stagging;

UPDATE layoffs_stagging
SET company = LTRIM(company);

-- if we look at industry it looks like we have some null and empty rows, let's take a look at these
SELECT DISTINCT industry
FROM layoffs_stagging
ORDER BY industry;

SELECT *
FROM layoffs_stagging
WHERE industry IS NULL 
OR industry = ''
ORDER BY industry;

-- now we need to populate those nulls if possible

UPDATE t1
SET t1.industry = t2.industry
FROM layoffs_stagging AS t1
JOIN layoffs_stagging AS t2 ON t1.company = t2.company
WHERE t1.industry IS NULL
AND t2.industry IS NOT NULL;

SELECT *
FROM layoffs_stagging
WHERE industry IS NULL 
OR industry = ''
ORDER BY industry;


-- I also noticed the Crypto has multiple different variations. We need to standardize that - let's say all to Crypto
SELECT DISTINCT industry
FROM layoffs_stagging
ORDER BY industry;

UPDATE layoffs_stagging
SET industry = 'Crypto'
WHERE industry IN ('Crypto Currency', 'CryptoCurrency');

-- now that's taken care of:
SELECT DISTINCT industry
FROM layoffs_stagging
ORDER BY industry;


-- we also need to look at 

SELECT *
FROM layoffs_stagging;

-- everything looks good except apparently we have some "United States" and some "United States." with a period at the end. Let's standardize this.
SELECT DISTINCT country
FROM layoffs_stagging
ORDER BY country;

UPDATE layoffs_stagging
SET country = TRIM(TRAILING '.' FROM country);

-- now if we run this again it is fixed
SELECT DISTINCT country
FROM layoffs_stagging
ORDER BY country;


-- Let's also fix the date columns:
SELECT *
FROM layoffs_stagging;

-- we can use str to date to update this field
UPDATE layoffs_stagging
SET [date] = TRY_CONVERT(DATE, [date], 101)
WHERE TRY_CONVERT(DATE, [date], 101) IS NOT NULL;


-- now we can convert the data type properly
ALTER TABLE layoffs_stagging
ALTER COLUMN [date] DATE;

-- 3. Look at Null Values

-- the null values in total_laid_off, percentage_laid_off, and funds_raised_millions all look normal. I don't think I want to change that
-- I like having them null because it makes it easier for calculations during the EDA phase

-- so there isn't anything I want to change with the null values




-- 4. remove any columns and rows we need to

SELECT *
FROM layoffs_stagging
WHERE total_laid_off IS NULL;


SELECT *
FROM layoffs_stagging
WHERE total_laid_off IS NULL
AND percentage_laid_off IS NULL;

-- Delete Useless data we can't really use
DELETE FROM layoffs_stagging
WHERE total_laid_off IS NULL
AND percentage_laid_off IS NULL;

SELECT * 
FROM layoffs_stagging;


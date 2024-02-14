use painting;

-- Fetch all the paintings which are not displayed on any museums?
select * from work where museum_id is null;

--Are there museuems without any paintings?
select * from museum m where not exists (select * from work w where w.museum_id = m.museum_id)

--How many paintings have an asking price of more than their regular price? 
select COUNT(work_id) as Painting_Count from product_size where sale_price > regular_price;

--Identify the paintings whose asking price is less than 50% of its regular price
select * from product_size where sale_price  < (regular_price * 0.50);

--Which canva size costs the most?
select c.[label] as canva_size, p.sale_price from canvas_size c join product_size p on c.size_id = p.size_id where p.sale_price = ( select max(sale_price) from product_size);

select cs.label as canva, p.sale_price from (select *, rank() over(order by sale_price desc) as rnk from product_size) p join canvas_size cs on cs.size_id = p.size_id where p.rnk = 1; 

--delete duplicate records from work, product_size, subject and image_link tables
delete from work 
where work_id not in (select min(work_id) from work group by work_id );

delete from product_size 
where work_id not in (select min(work_id) from product_size group by work_id, size_id );

delete from subject 
where work_id not in (select min(work_id) from subject group by work_id, subject );

delete from image_link 
where work_id not in (select min(work_id) from image_link group by work_id );


--Identify the museums with invalid city information in the given dataset
SELECT *
FROM museum
WHERE city IS NULL OR city = '' OR city NOT LIKE '%[A-Za-z, ]%';

--Museum_Hours table has 1 invalid entry. Identify it and remove it.
delete from museum_hours where museum_id not in (select min(museum_id) from museum_hours group by museum_id, [day]);

-- Fetch the top 10 most famous painting subject
select * from ( select s.subject, count(*) as no_of_paintings
                , rank() over (order by count(*) desc) as ranking from [work] w join subject s on w.work_id =s.work_id
                group by s.subject) x where ranking <= 10;

-- Identify the museums which are open on both Sunday and Monday. Display museum name, city.
select distinct(name) from museum m join museum_hours mh on m.museum_id = mh.museum_id
        where mh.[day] = 'Sunday' and exists (select 1 from museum_hours mh2 where mh2.museum_id=mh.museum_id and mh2.day = 'Monday');

-- How many museums are open every single day?
SELECT COUNT(1)
FROM (
    SELECT museum_id, COUNT(1) as record_count
    FROM museum_hours
    GROUP BY museum_id
    HAVING COUNT(1) = 7
) AS q;


--Which are the top 5 most popular museum? (Popularity is defined based on most no of paintings in a museum)

select m.name, m.city from museum m join (select m.museum_id, count(1) as no_of_paintings, rank() over (order by count(1) desc) as rank from work w 
join museum m on m.museum_id = w.museum_id group by m.museum_id) AS x on m.museum_id = x.museum_id where x.rank <=5;

--  Who are the top 5 most popular artist? (Popularity is defined based on most no of paintings done by an artist)

select a.full_name from artist a join (select a.artist_id, count(1) as no_of_paintings, rank() over(order by count(1) desc) as rank 
        from work w join artist a on w.artist_id = a.artist_id group by a.artist_id) as x on a.artist_id = x.artist_id where x.rank <= 5;

-- Display the 3 least popular canva sizes
select label,ranking,no_of_paintings
	from (
		select cs.size_id,cs.label,count(1) as no_of_paintings
		, dense_rank() over(order by count(1) ) as ranking
		from work w
		join product_size ps on ps.work_id=w.work_id
		join canvas_size cs on cs.size_id = ps.size_id
		group by cs.size_id, cs.label) x
	where x.ranking<=3;

--  Which museum is open for the longest during a day. Dispay museum name, state and hours open and which day?
SELECT museum_name, [state], [day], [open], [close], duration
FROM (
    SELECT
        m.name AS museum_name,
        m.state,
        mh.day,
        mh.[open],
        mh.[close],
        DATEDIFF(MINUTE, CONVERT(TIME, [open]), CONVERT(TIME, [close])) AS duration,
        RANK() OVER (ORDER BY DATEDIFF(MINUTE, CONVERT(TIME, [open]), CONVERT(TIME, [close])) DESC) AS rank
    FROM museum_hours mh
    JOIN museum m ON m.museum_id = mh.museum_id
) x
WHERE x.rank = 1;

-- Which museum has the most no of most popular painting style?

WITH pop_style AS (
    SELECT
        style,
        RANK() OVER (ORDER BY COUNT(*) DESC) AS rank
    FROM work
    GROUP BY style
), cte AS (
    SELECT
        w.museum_id,
        m.name AS museum_name,
        ps.style,
        COUNT(1) AS no_of_paintings,
        RANK() OVER (ORDER BY COUNT(1) DESC) AS rank
    FROM work w
    JOIN museum m ON m.museum_id = w.museum_id
    JOIN pop_style ps ON ps.style = w.style
    WHERE w.museum_id IS NOT NULL
      AND ps.rank = 1
    GROUP BY w.museum_id, m.name, ps.style
)
SELECT museum_name, style, no_of_paintings
FROM cte
WHERE rank = 1;

-- Identify the artists whose paintings are displayed in multiple countries

with cte as
		(select distinct a.full_name as artist
		, m.country
		from work w
		join artist a on a.artist_id=w.artist_id
		join museum m on m.museum_id=w.museum_id)
	select artist,count(1) as no_of_countries
	from cte
	group by artist
	having count(1)>1
	order by 2 desc;

-- Display the country and the city with most no of museums. Output 2 seperate columns to mention the city and country. If there are multiple value, seperate them with comma.
WITH cte_country AS (
    SELECT
        country,
        COUNT(1) AS country_count,
        RANK() OVER (ORDER BY COUNT(1) DESC) AS country_rank
    FROM museum
    GROUP BY country
),
cte_city AS (
    SELECT
        city,
        COUNT(1) AS city_count,
        RANK() OVER (ORDER BY COUNT(1) DESC) AS city_rank
    FROM museum
    GROUP BY city
)
SELECT
    c.country,
    ct.city
FROM cte_country c
JOIN cte_city ct ON 1 = 1 -- Cross join to get all combinations
WHERE c.country_rank = 1 AND ct.city_rank = 1;

-- Identify the artist and the museum where the most expensive and least expensive painting is placed. 

WITH cte AS (
    SELECT
        *,
        RANK() OVER (ORDER BY sale_price DESC) AS rnk,
        RANK() OVER (ORDER BY sale_price) AS rnk_asc
    FROM product_size
)
SELECT
    w.name AS painting,
    cte.sale_price,
    a.full_name AS artist,
    m.name AS museum,
    m.city,
    cz.label AS canvas
FROM
    cte
JOIN work w ON w.work_id = cte.work_id
JOIN museum m ON m.museum_id = w.museum_id
JOIN artist a ON a.artist_id = w.artist_id
JOIN canvas_size cz ON cz.size_id = CAST(cte.size_id AS NUMERIC)
WHERE
    cte.rnk = 1 OR cte.rnk_asc = 1
order by sale_price DESC;

-- Which country has the 5th highest no of paintings?
select country, no_of_paintings FROM
        ( select m.country, count(1) as  no_of_paintings,
        rank() over (order by count(1) desc) as rank
        from work w 
        join museum m on w.museum_id = m.museum_id
        group by country) x where rank = 5;

-- Which are the 3 most popular and 3 least popular painting styles?
	with cte as 
		(select style, count(1) as cnt
		, rank() over(order by count(1) desc) rnk
		, count(1) over() as no_of_records
		from work
		where style is not null
		group by style)
	select style
	, case when rnk <=3 then 'Most Popular' else 'Least Popular' end as remarks 
	from cte
	where rnk <=3
	or rnk > no_of_records - 3;

--  Which artist has the most no of Portraits paintings outside USA?. Display artist name, no of paintings and the artist nationality.
select full_name as artist_name, nationality, no_of_paintings
	from (
		select a.full_name, a.nationality
		,count(1) as no_of_paintings
		,rank() over(order by count(1) desc) as rnk
		from work w
		join artist a on a.artist_id=w.artist_id
		join subject s on s.work_id=w.work_id
		join museum m on m.museum_id=w.museum_id
		where s.subject='Portraits'
		and m.country != 'USA'
		group by a.full_name, a.nationality) x
	where rnk=1;
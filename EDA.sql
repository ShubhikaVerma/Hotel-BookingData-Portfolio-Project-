with hotels as(
SELECT * FROM dbo.['2018$']
UNION
SELECT * FROM dbo.['2019$']
UNION
SELECT * FROM dbo.['2020$']
)

--rename the entire table




--IS HOTEL REVENUE GROING EACH YEAR?
--CALCULATE HOTEL REVENUE

SELECT arrival_date_year,hotel,
round(SUM((stays_in_weekend_nights+stays_in_week_nights)*adr) ,2)as revenue
FROM hotels
GROUP BY arrival_date_year,hotel


--SELECT * FROM [WHO-COVID-19-CSV]

--1. Total cumulative cases and deaths globally
--SELECT 
--    SUM(Cases_cumulative_total) AS Total_Cases, 
--    SUM([Deaths_cumulative_total]) AS Total_Deaths
--FROM 
--    [WHO-COVID-19-CSV]

--2. Total cumulative cases and deaths by WHO region
--SELECT 
--    [WHO_region], 
--    SUM(Cases_cumulative_total) AS Total_Cases, 
--    SUM(Deaths_cumulative_total) AS Total_Deaths
--FROM 
--    [WHO-COVID-19-CSV]
--GROUP BY 
--    [WHO_region];

--3. Cumulative Number of Cases and Deaths by Country

--SELECT
--    Name,
--    [Cases_cumulative_total] AS Total_Cumulative_Cases,
--    [Deaths_cumulative_total] AS Total_Cumulative_Deaths
--FROM 
--    [WHO-COVID-19-CSV]
--ORDER BY 
--    Name;

--4. Top 10 Countries with the Highest Cumulative Total of COVID-19 Cases

--SELECT TOP 10
--    Name,
--    [Cases_cumulative_total] AS Total_Cumulative_Cases
--FROM 
--    [WHO-COVID-19-CSV]
--ORDER BY 
--    Cases_cumulative_total DESC

--5. Top 10 Countries with the Highest Cumulative Total of COVID-19 Deaths

--SELECT TOP 10
--    Name,
--    [Deaths_cumulative_total] AS Total_Cumulative_Deaths
--FROM 
--    [WHO-COVID-19-CSV]
--ORDER BY 
--    [Deaths_cumulative_total] DESC

--6. Top 5 Countries with the Lowest Cumulative Total of COVID-19 Cases per 100,000 Population

--SELECT TOP 5 
--    Name,
--    [Cases_cumulative_total_per_100000_population] AS Cases_Per_100k
--FROM 
--    [WHO-COVID-19-CSV]
--WHERE 
--	[Cases_cumulative_total_per_100000_population] > 0
--ORDER BY 
--    [Cases_cumulative_total_per_100000_population] ASC

--7. Top 5 Countries with the Lowest Cumulative Total of COVID-19 Deaths per 100,000 Population

--SELECT TOP 5
--    Name,
--    [Deaths_cumulative_total_per_100000_population] AS Deaths_Per_100k
--FROM 
--    [WHO-COVID-19-CSV]
--WHERE 
--	[Deaths_cumulative_total_per_100000_population] > 0
--ORDER BY 
--    [Deaths_cumulative_total_per_100000_population] ASC

--8. Total Cases Reported in the Last 24 Hours Globally

--SELECT 
--    SUM(Cases_newly_reported_in_last_24_hours) AS Total_New_Cases_Last_24_Hours
--FROM 
--    [WHO-COVID-19-CSV];

--9. Total Deaths Reported in the Last 24 Hours Globally

--SELECT 
--    SUM(Deaths_newly_reported_in_last_24_hours) AS Total_New_Deaths_Last_24_Hours
--FROM 
--    [WHO-COVID-19-CSV];

--10. Top 5 Countries with the Lowest Cases Reported in the Last 24 Hours

--SELECT TOP 5
--    Name,
--    [Cases_newly_reported_in_last_24_hours] AS New_Cases_Last_24_Hours
--FROM 
--    [WHO-COVID-19-CSV]
--WHERE 
--	[Cases_newly_reported_in_last_24_hours] > 0
--ORDER BY 
--    [Cases_newly_reported_in_last_24_hours] ASC

--11. Top 5 Countries with the Lowest Deaths Reported in the Last 24 Hours

--SELECT TOP 5
--    Name,
--    [Deaths_newly_reported_in_last_24_hours] AS New_Deaths_Last_24_Hours
--FROM 
--    [WHO-COVID-19-CSV]
--WHERE
--	[Deaths_newly_reported_in_last_24_hours] > 0
--ORDER BY 
--    [Deaths_newly_reported_in_last_24_hours] ASC

--12. Top 10 countries with the highest cases in the last 7 days

--SELECT TOP 10
--    Name, 
--    Cases_cumulative_total
--FROM 
--    [WHO-COVID-19-CSV]
--ORDER BY 
--    Cases_newly_reported_in_last_7_days DESC

--13. Top 10 countries with the highest deaths in the last 7 days

--SELECT TOP 10
--    Name, 
--    Deaths_cumulative_total
--FROM 
--    [WHO-COVID-19-CSV]
--ORDER BY 
--    Deaths_newly_reported_in_last_7_days DESC

--14. Average Number of Cases and Deaths

--SELECT 
--    AVG([Cases_cumulative_total]) AS Avg_Cases,
--    AVG([Deaths_cumulative_total]) AS Avg_Deaths
--FROM 
--    [WHO-COVID-19-CSV];

--15. Top 5 Countries with the Highest Average Number of Cases

--SELECT TOP 5
--    Name,
--    AVG([Cases_cumulative_total]) AS Avg_Cases
--FROM 
--    [WHO-COVID-19-CSV]
--GROUP BY 
--    Name
--ORDER BY 
--    AVG([Cases_cumulative_total]) DESC

--16. Top 5 Countries with the Highest Average Number of Deaths

--SELECT TOP 5
--    Name,
--    AVG([Deaths_cumulative_total]) AS Avg_Deaths
--FROM 
--    [WHO-COVID-19-CSV]
--GROUP BY 
--    Name
--ORDER BY 
--    AVG([Deaths_cumulative_total]) DESC



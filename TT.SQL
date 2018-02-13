DECLARE @startdate DATE; 
 
SET @startdate = '12/4/2017' 
 
DECLARE @enddate DATE; 
 
SET @enddate = '1/16/2018' 
 
SELECT @startdate                         AS startdate, 
       @enddate                           AS enddate, 
       Datediff(d, @startdate, @enddate)  AS datdifference, 
       (SELECT Count(*) 
        FROM   [calendar] AS h 
        WHERE  h.[dt] BETWEEN @startdate AND @enddate 
               AND h.[isworkday] = 1) - 1 AS turntime

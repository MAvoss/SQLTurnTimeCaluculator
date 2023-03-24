# SQLTurnTimeCaluculator
SQL Code for calculating Turn around time between two dates. 

This SQL code declares two variables: @startdate and @enddate, and sets their values to '12/4/2017' and '1/16/2018', respectively.

The SELECT statement then uses the DATEDIFF function to calculate the difference in days between @startdate and @enddate, and assigns the result to the alias "datdifference".

Additionally, the SELECT statement includes a subquery that counts the number of workdays between @startdate and @enddate (excluding the end date itself), and subtracts 1 from the result. This difference is assigned to the alias "turntime".

Overall, the code is calculating the number of days and workdays between two specific dates.

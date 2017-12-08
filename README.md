# SQL-Injection-Prevention

Always use a parentheses @FirstName, and then make it equal the select statement and textbox.text value to prevent the 
SQL Injection attacks. 
What is SQL Injection Attacks?
https://www.acunetix.com/websitesecurity/sql-injection/
How can I avoid SQL injection attacks in my ASP.NET application?
https://stackoverflow.com/questions/305044/how-can-i-avoid-sql-injection-attacks-in-my-asp-net-application
It's where a user types in bad text into your text boxes on your website, and tries hard to DROP your Customers Table, or delete all data from it, or even DROP your Database holding all your tables.

Never concatonate the strings in an SQL Server string, ie: select statement where textbox1.text value. 

M'; Delete * from Injection --
M'; Drop table Injection --
M'; Drop database DataBaseOne --

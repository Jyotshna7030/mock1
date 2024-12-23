select c.CustomerID, c.Name as CustomerName, sum(s.TotalAmount) as TotalRevenue,
rank() over (order by sum(s.TotalAmount) desc) As RevenueRank from Sales s
join Customers c on s.CustomerID = c.CustomerID
group by c.CustomerID, c.Name
order by RevenueRank limit 5;
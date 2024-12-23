select DATE_TRUNC('month', s.Date) AS SalesMonth,
c.Region, p.Category AS Category,
sum(s.TotalAmount) AS TotalSales,
sum(s.Quantity) AS TotalQuantity   
from Sales s join  Customers c on s.CustomerID = c.CustomerID join
Products p ON s.ProductID = p.ProductID
group by DATE_TRUNC('month', s.Date), c.Region, p.Category
order by SalesMonth, c.Region,Category;

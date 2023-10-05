-- task 1
drop view if exists OrdersView;

CREATE VIEW OrdersView AS
    SELECT 
        OrderID, Quantity, TotalCost
    FROM
        Orders
    WHERE
        Quantity > 2;

select * from OrdersView;

-- task 2
SELECT 
    CONCAT(FirstName, ' ', LastName) AS FullName,
    OrderID,
    TotalCost,
    Cuisine AS 'Menu cuisine',
    Name AS 'Menu item name'
FROM
    CustomerDetails
        INNER JOIN
    Bookings USING (CustomerID)
        INNER JOIN
    Orders USING (BookingID)
        INNER JOIN
    Menus USING (MenuID)
        INNER JOIN
    MenuItems USING (MenuID)
WHERE
    TotalCost > 150;

-- task 3
SELECT 
    Name
FROM
    MenuItems
WHERE
    MenuID IN (SELECT 
            MenuId
        FROM
            Orders
        WHERE
            Quantity > 2);
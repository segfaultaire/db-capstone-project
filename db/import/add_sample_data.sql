--- Menus
INSERT INTO Menus (MenuID,Cuisine)
VALUES
(1,  'Greek'),
(2, 'Italian'),
(3, 'Turkish'),
(4, 'American');

--- MenuItems
INSERT INTO MenuItems (MenuItemID, MenuID, Name, Type, Price)
VALUES
(1, 1, 'Olives','Starters',5),
(2, 4,'Flatbread','Starters', 5),
(3, 2, 'Minestrone', 'Starters', 8),
(4, 4,'Tomato bread','Starters', 8),
(5, 3, 'Falafel', 'Starters', 7),
(6, 4, 'Hummus', 'Starters', 5),
(7, 1, 'Greek salad', 'Main Courses', 15),
(8, 4, 'Bean soup', 'Main Courses', 12),
(9, 2, 'Pizza', 'Main Courses', 15),
(10, 1, 'Greek yoghurt','Desserts', 7),
(11, 3, 'Ice cream', 'Desserts', 6),
(12, 2, 'Cheesecake', 'Desserts', 4),
(13, 1, 'Athens White wine', 'Drinks', 25),
(14, 4,'Corfu Red Wine', 'Drinks', 30),
(15, 2,'Espresso', 'Drinks', 10),
(16, 3, 'Turkish Coffee', 'Drinks', 10),
(17, 3,'Kabasa', 'Main Courses', 17);

--- CustomerDetails
INSERT INTO CustomerDetails (CustomerID, FirstName, LastName, PhoneNumber)
VALUES
(1, 'Anna', 'Iversen', '89798789'),
(2, 'Joakim', 'Iversen', '231313'),
(3, 'Vanessa', 'McCarthy', '5624423'),
(4, 'Marcos', 'Romero', '823746'), 
(5, 'Hiroki', 'Yamane', '945652'),
(6, 'Diana', 'Pinto', '8378505');

--- Bookings
INSERT INTO Bookings (BookingID, CustomerID, TableNumber, DateTime, Status)
VALUES
(1, 2, 5, '2023-10-02 19:00:00', 'Planned'),
(2, 6, 2, '2023-10-01 19:00:00', 'Honoured'),
(3, 5, 7, '2023-10-02 15:00:00', 'Planned'),
(4, 6, 9, '2023-10-09 17:30:00', 'Cancelled'),
(5, 3, 4, '2023-10-07 18:30:00', 'Planned'),
(6, 1, 8, '2023-10-06 20:00:00', 'Planned');

--- Staff
INSERT INTO Staff (StaffID, FirstName, LastName, Role, Salary) 
VALUES
(1, 'Mario', 'Gollini', 'Manager', 70000),
(2, 'Adrian', 'Gollini', 'Assistant Manager', 65000),
(3, 'Giorgos', 'Dioudis', 'Head Chef', 50000),
(4, 'Fatma', 'Kaya', 'Assistant Chef', 45000),
(5, 'Elena', 'Salvai', 'Head Waiter', 40000),
(6, 'John', 'Millar', 'Receptionist', 35000);

--- OrderDeliveryStatus
INSERT INTO OrderDeliveryStatus (OrderDeliveryStatusID, Status, Date)
VALUES
(1, 'Planned', '2023-10-06 20:00:00'),
(2, 'Planned', '2023-10-02 19:30:00'),
(3, 'Delivered', '2023-10-01 19:30:00'),
(4, 'Planned', '2023-10-07 19:00:00'),
(5, 'Planned', '2023-10-02 15:30:00');

--- Orders
INSERT INTO Orders (OrderID, BookingID, MenuID, OrderDeliveryStatusID, WaiterID, TotalCost, Quantity)
VALUES
(1, 6, 1, 1, 1, 200, 5),
(2, 1, 2, 2, 2, 89, 1),
(3, 2, 2, 3, 3, 45, 1),
(4, 5, 3, 4, 4, 12, 1),
(5, 3, 1, 5, 5, 198, 5);
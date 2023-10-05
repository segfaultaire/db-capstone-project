-- task 1
drop procedure if exists GetMaxQuantity;

delimiter //

create procedure GetMaxQuantity() 
begin
	select max(Quantity) as 'Max Quantity in Order' from Orders;
end //

delimiter ;

call GetMaxQuantity();

-- task 2
prepare GetOrderDetail from 'select OrderID, Quantity, TotalCost from Orders  inner join Bookings using (BookingID) where CustomerID = ?';
SET @id = 1;
EXECUTE GetOrderDetail USING @id;

-- task 3
drop procedure if exists CancelOrder;

delimiter //

create procedure CancelOrder(in Cancel_OrderID int)
begin
update OrderDeliveryStatus set Status = 'Cancelled' where OrderDeliveryStatusID = (select OrderDeliveryStatusID from Orders where OrderID = Cancel_OrderID);
SELECT CONCAT('Order', Cancel_OrderID, 'is cancelled') AS Confirmation;
end //

delimiter ;

call CancelOrder(1);
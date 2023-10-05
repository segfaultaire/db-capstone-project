-- task 1
drop procedure if exists AddBooking;

delimiter //

create procedure AddBooking(in new_booking_id int, in new_customer_id int, in new_booking_date datetime, in new_table_number int)
begin 
insert into Bookings (BookingID, CustomerID, DateTime, TableNumber) 
values (new_booking_id, new_customer_id, new_booking_date, new_table_number);

select 'New booking added' as Confirmation;
end //

delimiter ;

call AddBooking(123, 2,  '2023-12-12 20:40:00', 77);

-- task 2
drop procedure if exists UpdateBooking;

delimiter //

create procedure UpdateBooking(in existing_booking_id int, in new_datetime datetime)
begin 
UPDATE Bookings 
SET 
    DateTime = new_datetime
WHERE
    BookingID = existing_booking_id;

SELECT 
    CONCAT('Booking ',
            existing_booking_id,
            ' updated') AS Confirmation;
end //

delimiter ;

call UpdateBooking(123, '2024-01-01 15:34:00');

-- task 3
drop procedure if exists CancelBooking;

delimiter //

create procedure CancelBooking(in existing_booking_id int)
begin 
delete from Bookings
where BookingID = existing_booking_id
and Status = 'Planned';

select concat('Booking ', existing_booking_id, ' cancelled') as Confirmation;
end //

delimiter ;

call CancelBooking(123);
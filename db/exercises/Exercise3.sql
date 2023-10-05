-- task 2
drop procedure if exists CheckBooking;

delimiter //

create procedure CheckBooking(in requested_date date, in requested_table_number int) 
begin 
declare already_is boolean;

select count(*)  > 0
into already_is
from Bookings
where TableNumber = requested_table_number
and date(DateTime) = requested_date;

if already_is then
	select concat('Table ', requested_table_number, ' is already booked') as 'Booking status';
else 
	select concat('Table ', requested_table_number, ' is available') as 'Booking status';
end if;    

end //

delimiter ;

call CheckBooking('2023-10-02', 5);

-- task 3
drop procedure if exists AddValidBooking;

delimiter // 

create procedure AddValidBooking(in requested_date date, in requested_table_number int, in customer_id int)
begin
declare already_is boolean;

start transaction;
insert into Bookings (CustomerID, TableNumber, DateTime) values (customer_id, requested_table_number, requested_date);

select count(*)  > 0
into already_is
from Bookings
where TableNumber = requested_table_number
and date(DateTime) = requested_date;

if already_is > 1 then
	rollback;
    select concat('Table ', requested_table_number, ' is already booked - booking cancelled') as 'Booking status';	
else
	commit;
    select concat('Table ', requested_table_number, ' was successfully booked') as 'Booking status';
end if;
end //

delimiter ;

call AddValidBooking('2023-10-02', 5, 1);
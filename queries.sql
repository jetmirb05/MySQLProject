select * from categorymenuitems cmi
left join categories ct on cmi.CategoryID = ct.CategoryID

select mi.menuitemid,mi.name,mi.description, inv.quantity,inv.unit from inventory inv 
left join menuitems mi on inv.menuitemid = mi.menuitemid

select * from categorymenuitems cmi
left join menuitems ct on cmi.MenuItemID = ct.MenuItemID

select mp.name,mp.description, ct.orderdate,ct.totalprice,ct.status from ordersmenuitems o
left join orders ct on o.OrderID = ct.OrderID
left join menuitems mp on o.MenuItemID = mp.MenuItemID

select ct.name, ct.contactinfo,o.orderdate,o.totalprice,o.status from orders o
left join customers ct on o.CustomerID = ct.CustomerID where o.status = 'completed' order by o.orderdate desc

select ItemName, Quantity from inventory
where Quantity < 10;

select MenuItemID, Name, Price from menuitems
where Price > 100;

update customers
set ContactInfo = '072000555' 
where CustomerID = 1;

delete from menuitems
where name = 'Coca Cola'; 

select EmployeeID, Name
from employees
where Role = 'Menaxher';

select * from menuitems


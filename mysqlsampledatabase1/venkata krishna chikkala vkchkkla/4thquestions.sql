use classicmodels;

select distinct p.productname from orderDetails o inner join  products p on  p.productcode=o.productcode and o.priceeach<p.msrp;
 
 
select sum(quantityordered) from orderdetails where ordernumber in (select ordernumber from orders where status='On Hold');

 
 

select dayname(orderdate),count(*) from orders group by dayname(orderDate) order by 2 desc;


 
select country, count(customerNumber) from customers group by country ;

  
 
select sum(p.costper) from (select buyprice*quantityinstock  as costper from products)p; 


 
select distinct contactlastName,contactfirstName from customers where contactlastName like "T%" and contactfirstname like "%a";

 
select distinct count(productname) from products;
select distinct contactlastName,contactfirstName from customers where contactlastName like "T%" and contactfirstname like "%a";
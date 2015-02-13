
use classicmodels;

select distinct p.productname from orderDetails o inner join  products p on  p.productcode=o.productcode and o.priceeach<p.msrp;


 select p.amount - q.amount as amount from (select sum(amount) as amount,paymentdate from payments where year(paymentdate)=2003 group by month(paymentdate))q,(select sum(amount) as amount,paymentdate from payments where year(paymentdate)=2004 group by month(paymentdate))p group by month(p.paymentdate);

 
select sum(quantityordered) from orderdetails where ordernumber in (select ordernumber from orders where status='On Hold');


 
select a.sum-b.sum from (select count(phone) as sum from customers)a, (select count(*) as sum from (select distinct phone from customers) as internalquery)b ;
 

select dayname(orderdate),count(*) from orders group by dayname(orderDate) order by 2 desc;


 
select country, count(customerNumber) from customers group by country ;

 
select avg(p.sum) from (select datediff(shippeddate,orderdate) as sum from orders)p;


 
select sum(p.costper) from (select buyprice*quantityinstock  as costper from products)p; 


 
select distinct contactlastName,contactfirstName from customers where contactlastName like "B%" and contactfirstname like "%a";

 
select distinct count(productname) from products;
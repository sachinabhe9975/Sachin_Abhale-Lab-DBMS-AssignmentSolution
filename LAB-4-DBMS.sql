

CREATE DATABASE e_commerce_dbms;

use e_commerce_dbms;



create table supplier
(
SUPP_ID int primary key,
SUPP_NAME varchar(20) NOT NULL ,
SUPP_CITY varchar(30)  NOT NULL,
SUPP_PHONE varchar(10) NOT NULL
);




create table customer
(
CUS_ID INT primary key,
CUS_NAME VARCHAR(20) NOT NULL,
CUS_PHONE VARCHAR(10) NOT NULL,
CUS_CITY VARCHAR(30) NOT NULL,
CUS_GENDER CHAR
);



create table category
(
CAT_ID INT primary key,
CAT_NAME VARCHAR(20) NOT NULL
);




create table product
(
PRO_ID INT primary key,
PRO_NAME VARCHAR(20) NOT NULL DEFAULT "Dummy" ,
PRO_DESC VARCHAR(60),
CAT_ID INT ,
FOREIGN KEY (CAT_ID) REFERENCES category(CAT_ID)
);




create table supplier_pricing
(
PRICING_ID INT Primary key,
PRO_ID INT ,
SUPP_ID INT,
SUPP_PRICE INT DEFAULT 0,
FOREIGN KEY (PRO_ID ) REFERENCES product(PRO_ID),
FOREIGN KEY (SUPP_ID) REFERENCES supplier(SUPP_ID)
);



create table Order0
(
ORD_ID INT primary key,
ORD_AMOUNT INT NOT NULL,
ORD_DATE DATE NOT NULL,
CUS_ID INT ,
PRICING_ID INT ,
FOREIGN KEY (CUS_ID ) REFERENCES customer(CUS_ID ),
FOREIGN KEY (PRICING_ID) REFERENCES supplier_pricing(PRICING_ID)
);



create table rating
(
RAT_ID INT primary key,
ORD_ID INT ,
RAT_RATSTARS INT NOT NULL,
FOREIGN KEY (ORD_ID ) REFERENCES Order0(ORD_ID)
);




insert into supplier values(1 ,"Rajesh Retails", "Delhi", "1234567890");
insert into supplier values(2 ,"Appario Ltd.", "Mumbai", "2589631470");
insert into supplier values(3 ,"Knome products", "Banglore", "9785462315");
insert into supplier values(4, "Bansal Retails","Kochi", "8975463285");
insert into supplier values(5,"Mittal Ltd.", "Lucknow ","7898456532");



insert into customer values(1 , "AAKASH", "9999999999","DELHI", "M");
insert into customer values(2 , "AMAN", "9785463215", "NOIDA", "M");
insert into customer values(3 , "NEHA", "9999999999", "MUMBAI", "F");
insert into customer values(4 ,"MEGHA", "9994562399", "KOLKATA","F");
insert into customer values(5 , "PULKIT", "7895999999" ,"LUCKNOW", "M");




insert into category values(1 , "BOOKS");
insert into category values(2 , "GAMES");
insert into category values(3 , "GROCERIES");
insert into category values(4 ,"ELECTRONICS");
insert into category values(5 , "CLOTHES");



insert into product values(1,  "GTA V"," Windows 7 and above with i5 processor and 8GB RAM" , 2);
insert into product values(2,  "TSHIRT", "SIZE-L with Black, Blue and White variations" , 5);
insert into product values(3,  "ROG LAPTOP"," Windows 10 with 15inch screen, i7 processor, 1TB SSD" , 4);
insert into product values(4, "OATS" , "Highly Nutritious from Nestle" ,3);
insert into product values(5, "HARRY POTTER" , "Best Collection of all time by J.K Rowling", 1);
insert into product values(6, "MILK" , "1L Toned MIlk", 3);
insert into product values(7, "Boat Earphones", "1.5Meter long Dolby Atmos", 4);
insert into product values(8, "Jeans" , "Stretchable Denim Jeans with various sizes and color", 5);
insert into product values(9, "Project IGI" , "compatible with windows 7 and above", 2);
insert into product values(10, "Hoodie" , "Black GUCCI for 13 yrs and above" ,5);
insert into product values(11, "Rich Dad Poor" , "Dad Written by RObert Kiyosaki", 1);
insert into product values(12, "Train Your Brain" , "By Shireen Stephen", 1);
insert into product values(13,  "School bag"," This is a genuine American Tourister product" , 2);
insert into product values(14, "PARKER Classic Pen" ,"Gold plated stainless steel cap " , 5);
insert into product values(15,  "Redmi k20 mobile "," 6 GB RAM | 64 GB ROM 16.23 cm (6.39 inch) Full HD+ Display" , 4);




insert into supplier_pricing values(1 , 1 ,2 ,1500);
insert into supplier_pricing values(2 ,3, 5, 30000);
insert into supplier_pricing values(3, 5, 1 ,3000);
insert into supplier_pricing values(4 ,2, 3 ,2500);
insert into supplier_pricing values(5 ,4 ,1 ,1000);




insert into order0 values(101, 1500 , "2021-10-06" , 2, 1);
insert into order0 values(102, 1000 , "2021-10-12" , 3 ,5);
insert into order0 values(103, 30000, " 2021-09-16" , 5, 2);
insert into order0 values(104, 1500 , "2021-10-05" , 1 , 1);
insert into order0 values(105 , 3000 , "2021-08-16" , 4  ,3);
insert into order0 values(106 , 1450 , "2021-08-18",  1 , 9);
insert into order0 values(107 , 789 , "2021-09-01" , 3 ,7);
insert into order0 values(108 ,  780 , "2021-09-07" , 5 , 6);
insert into order0 values(109 , 3000 , "2021-00-10",  5, 3);
insert into order0 values(110, 2500 , "2021-09-10" , 2 , 4);
insert into order0 values(111 , 1000 , "2021-09-15" , 4 ,5);
insert into order0 values(112 , 789 , "2021-09-16", 4 ,7);
insert into order0 values(113 , 31000 , "2021-09-16", 1 , 8);
insert into order0 values(114 , 1000 , "2021-09-16",  3  ,5);
insert into order0 values(115 , 3000 , "2021-09-16" , 5 ,3);
insert into order0 values(116 , 99 , "2021-09-17" , 2 , 14);




insert into supplier_pricing values(6 , 6 ,4 ,1500);
insert into supplier_pricing values(7 ,8, 5, 30000);
insert into supplier_pricing values(8, 7, 3 ,3000);
insert into supplier_pricing values(9 ,10, 3 ,2500);
insert into supplier_pricing values(10 ,9 ,1 ,1000);
insert into supplier_pricing values(11 , 12 ,3 ,1500);
insert into supplier_pricing values(12 ,11, 5, 30000);
insert into supplier_pricing values(13 ,13, 5, 30000);
insert into supplier_pricing values(14 ,15, 5, 30000);
insert into supplier_pricing values(15 ,14, 5, 30000);



insert into rating values(1 ,101 ,4);
insert into rating values(2, 102, 3);
insert into rating values(3 , 103 ,1);
insert into rating values(4 , 104 ,2);
insert into rating values(5 ,105, 4);
insert into rating values(6 , 106 , 3);
insert into rating values(7 , 107 , 4);
insert into rating values(8 ,108 ,4);
insert into rating values(9, 109 ,3);
insert into rating values(10 , 110 ,5);
insert into rating values(11 , 111 , 3);
insert into rating values(12 , 112 , 4);
insert into rating values(13 , 113 , 2);
insert into rating values(14 ,114 ,1);
insert into rating values(15 ,115 ,1);
insert into rating values(16 ,116, 0);



--- Queries →

--- 1 .Display the total number of customers based on gender who have placed orders of worth at least Rs.3000
--- Sulution of 1st queries is as follows :

     select CUS_GENDER ,count(CUS_GENDER) as NO_Of_CUSTOMER 
     from customer, order0 where ORD_AMOUNT>=3000 and customer.CUS_ID=order0.CUS_ID
     group by CUS_GENDER;
     
     
--- 2.Display all the orders along with product name ordered by a customer having Customer_Id=2
--- Sulution of 2nd  queries is as follows :

   select CUS_ID, PRO_NAME
   from product join customer
   where CUS_ID=2 and  PRO_ID in (select PRO_ID  from supplier_pricing
   where PRICING_ID in (select PRICING_ID  from Order0 where
   ORD_ID in (select ORD_ID from order0 where CUS_ID=2) ) )   ;
 
 --- 3.Display the Supplier details who can supply more than one product
--- Sulution of 3rd queries is as follows :

 select * from supplier 
 where supplier.SUPP_ID in (SELECT s1.SUPP_ID 
 FROM ( select supplier_pricing.SUPP_ID , count(supplier_pricing.PRO_ID )as NO_of_orders 
 from  supplier ,supplier_pricing 
 where supplier.SUPP_ID=supplier_pricing.SUPP_ID 
 group by supplier_pricing.SUPP_ID) as s1 where s1.NO_of_orders>1 ) ;

--- 4  Find the least expensive product from each category and print the table with category id, name, product name and price of the product
--- Sulution of 4th queries is as follows :

 select c.CAT_ID ,c.CAT_NAME,p.PRO_NAME, min(sp.SUPP_PRICE) as Least_Price_Productes from category as c
 join product as p
 on c.CAT_ID = p.CAT_ID
 join supplier_pricing as sp
 on p.PRO_ID = sp.PRO_ID
 group by c.CAT_ID;

 --- 5.Display the Id and Name of the Product ordered after “2021-10-05”
 --- Sulution of 5th queries is as follows :
 
 select PRO_ID ,PRO_NAME 
 from product 
 where PRO_ID in(select PRO_ID from supplier_pricing 
 where PRICING_ID in (select PRICING_ID from order0 where ORD_DATE> 2021-10-05));

--- 6. Display customer name and gender whose names start or end with character 'A'
--- Sulution of 6th queries is as follows :

select CUS_NAME , CUS_GENDER 
from customer 
where CUS_NAME like "A%" or CUS_NAME like "%A";
 
--- 7. Create a stored procedure to display supplier id, name, rating and Type_of_Service. For Type_of_Service, If rating =5, print “Excellent 
Service”,If rating >4 print “Good Service”, If rating >2 print “Average Service” else print “Poor Service”.alter.
--- Sulution of 7th queries is as follows :

DELIMITER $
create procedure QualityCheck ()
Begin
Select  s.SUPP_ID,s.SUPP_NAME,r.RAT_RATSTARS ,
case
    when RAT_RATSTARS =5 then 'Excellent service'
    when RAT_RATSTARS >=4 then 'Good service'
    when RAT_RATSTARS >2 then 'Average service'
    else 'poor service'
end as Type_of_service
from rating r
join order0 o
on r.ORD_ID = o.ORD_ID
join supplier_pricing  sp
on o.PRICING_ID = sp.PRICING_ID
join supplier s
on sp.SUPP_ID =s.SUPP_ID;
end $
DELIMITER ;
call QualityCheck();




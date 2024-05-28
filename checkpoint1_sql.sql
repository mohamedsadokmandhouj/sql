create database checkpoint ;
use checkpoint ;
create table customer (
customer_id varchar(20) primary key , 
customer_name varchar(20) not null ,
customer_tel double  
) ;
create table product (
product_id varchar(20) primary key , 
product_name varchar(20) not null ,
price double check(price>0) 
) ;

create table orders (
customer_id varchar(20) ,
 foreign key (customer_id) references customer(customer_id), 
 product_id varchar(20),
  foreign key (product_id) references product(product_id), 
quantity double ,
total_amount double   
) ;
alter table product add Catégorie VARCHAR(20) ;
alter table orders add OrderDate DATE default(current_date)


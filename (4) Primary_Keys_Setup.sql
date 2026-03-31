-- Ensuring unique identifiers and enforcing constraints across the database


-- CUSTOMERS --
-- Check for NULLs and duplicates in the identifier
select * from customers
where customer_id is null

select customer_id, count(*)
from customers
group by customer_id
having count(*) > 1

-- Enforce NOT NULL and define Primary Key
alter table customers
alter column customer_id nvarchar(50) not null

alter table customers 
add primary key (customer_id)


-- MARKETING_QUALIFIED_LEADS --
select * from marketing_qualified_leads
where mql_id is null

select mql_id, count(*)
from marketing_qualified_leads
group by mql_id
having count(*) > 1

alter table marketing_qualified_leads
alter column mql_id nvarchar(50) not null

alter table marketing_qualified_leads
add primary key (mql_id)


-- ORDER_ITEMS --
-- Composite Key
select * from order_items
where order_id is null

select * from order_items
where order_item_id is null

select order_id, order_item_id, count(*)
from order_items
group by order_id, order_item_id
having count(*) > 1

alter table order_items
alter column order_id nvarchar(50) not null

alter table order_items
alter column order_item_id tinyint not null

alter table order_items
add primary key (order_id, order_item_id)


-- ORDER_PAYMENTS --
-- Composite Key
select * from order_payments
where order_id is null

select * from order_payments
where payment_sequential is null

select order_id, payment_sequential, count(*)
from order_payments
group by order_id, payment_sequential
having count(*) > 1

alter table order_payments
alter column order_id nvarchar(50) not null

alter table order_payments
alter column payment_sequential tinyint not null

alter table order_payments
add primary key (order_id, payment_sequential)


-- CATEGORY_NAME_TRANSLATION --
select * from category_name_translation
where product_category_name is null

select product_category_name, count(*)
from category_name_translation
group by product_category_name
having count(*) > 1

alter table category_name_translation
alter column product_category_name nvarchar(50) not null

alter table category_name_translation
add primary key (product_category_name)


-- SELLERS --
select * from sellers
where seller_id is null

select seller_id, count(*)
from sellers
group by seller_id
having count(*) > 1

alter table sellers
alter column seller_id nvarchar(50) not null

alter table sellers
add primary key (seller_id)


-- PRODUCTS --
select * from products
where product_id is null

select product_id, count(*)
from products
group by product_id
having count(*) > 1

alter table products
alter column product_id nvarchar(50) not null

alter table products
add primary key (product_id)


-- ORDER_REVIEWS --
-- Composite Key
select * from order_reviews
where review_id is null

select * from order_reviews
where order_id is null

select review_id, order_id, count(*)
from order_reviews
group by review_id, order_id
having count(*) > 1

alter table order_reviews
alter column review_id nvarchar(50) not null

alter table order_reviews
alter column order_id nvarchar(50) not null

alter table order_reviews
add primary key (review_id, order_id)


-- CLOSED_DEALS --
select * from closed_deals
where mql_id is null

select mql_id, count(*)
from closed_deals
group by mql_id
having count(*) > 1

alter table closed_deals
alter column mql_id nvarchar(50) not null

alter table closed_deals
add primary key (mql_id)
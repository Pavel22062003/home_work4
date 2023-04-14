--1
ALTER TABLE products ADD CONSTRAINT chk_products_unit_price CHECK(unit_price>0)

--2
ALTER TABLE products ADD CONSTRAINT chk_products_discontinued CHECK(discontinued IN (0,1))

--3
SELECT * INTO no_sale FROM products
WHERE discontinued =1

--4
ALTER TABLE order_details DROP CONSTRAINT fk_order_details_products;
DELETE FROM products 
WHERE discontinued =1

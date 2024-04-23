use store;
desc product;
alter table product DROP COLUMN place;
drop table product;
create table product(pdtid varchar(25) primary key, pname varchar(50), price varchar(25), quantity varchar(25));

CALL InsertProduct(1000, "bottle", -200, 300);
select * from product;

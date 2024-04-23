use sales;

create table Product(PdtId varchar(20) primary key, Pname varchar(50), Proce varchar(20), Qtyinstock varchar(10));
desc Product;

create table Sales(saleId varchar(20), Deliveryaddress varchar(20));
alter table Sales add primary key(saleId);
desc Sales;


create table Salesitem(saleId varchar(20), PdtId varchar(20), Qty varchar(20), primary key(saleId,PdtId));
desc Salesitem;
DROP table Salesitem;
create table Salesitem(saleId varchar(20), PdtId varchar(20), Qty varchar(20), foreign key(saleId) references Sales(saleId), foreign key(PdtId) references Product(PdtId));

create trigger stock
after insert on Salesitem
for each row
update Product set Qtyinstock=Product.Qtyinstock- new.Qty where PdtId=new.PdtId;
drop trigger stock;

insert into Product values(100, "Book", 25, 120);
select * from Product;
INSERT INTO Product values(101, "Bottle", 50, 100);
SELECT * FROM Product;
INSERT INTO Sales(saleId,Deliveryaddress) values(001,"ADD1"), (002,"ADD2");
INSERT INTO Salesitem values(002, 101, 4);
set sql_safe_updates=0;
show triggers;

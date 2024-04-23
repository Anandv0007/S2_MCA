CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertProduct`(IN barcode varchar(25), IN pname varchar(25), IN price varchar(25), IN quantity varchar(25))
BEGIN
declare f varchar(20);
	IF price > 0 AND quantity >= 0 THEN
		INSERT INTO product(pdtid, pname, price, quantity) values (barcode, pname, price, quantity);
	else
		set f = "Not inserted";
        select f;
        END IF;
END
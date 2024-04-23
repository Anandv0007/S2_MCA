CREATE DEFINER=`root`@`localhost` PROCEDURE `evenodd`(in num int)
BEGIN
declare res varchar(50);
if num%2=0
then
set res = "even";
else
set res = "odd";
end if;
select res;

END
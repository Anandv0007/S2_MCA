CREATE DEFINER=`root`@`localhost` PROCEDURE `positive`(in num int)
BEGIN

declare result varchar(50);
if num>0
then
set result="Positive number";
elseif num<0
then
set result="Negative number";
else
set result="Zero";
end if;
select result;


END
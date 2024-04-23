CREATE DEFINER=`root`@`localhost` PROCEDURE `grade`(in mark int)
BEGIN

declare res varchar(50);
if mark>=90
then
set res="Grade A";
elseif mark>=80
then
set res="Grade B";
elseif mark>=70
then
set res="Grade C";
elseif mark>=60
then
set res="Grade D";
else
set res="Failed";
end if;
select res;

END
CREATE DEFINER=`root`@`localhost` PROCEDURE `day`(in d date)
BEGIN

declare dd int;
set dd=weekday(d);
select dd;
END
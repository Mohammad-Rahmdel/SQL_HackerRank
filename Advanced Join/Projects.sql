set @i = 0, @j = 0;
select Start_Date, End_Date from
(select @i:=@i+1 as i, Start_Date from Projects where Start_Date not in (select End_Date from Projects)
order by Start_Date) as sub1 
inner join
(select @j:=@j+1 as j, End_Date from Projects where End_Date not in (select Start_Date from Projects)
order by End_Date) as sub2
on i=j
ORDER BY DATEDIFF(End_Date, Start_Date), Start_Date

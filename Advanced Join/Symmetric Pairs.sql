select sub.X, sub.Y from (
    select f1.X, f1.Y
    from Functions f1 inner join Functions f2
    on f1.X = f2.Y and f1.Y = f2.X and f1.X < f1.Y

    union

    select f1.X, f1.Y
    from Functions f1 inner join Functions f2
    on f1.X = f2.Y and f1.Y = f2.X and f1.X = f1.Y
    group by f1.X,f1.Y
    having count(1) > 1
) as sub
order by sub.X

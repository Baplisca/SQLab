select
    s.name,
    sum(b.price * b.figure) as sales
from
    stores s
    inner join book_sales b on s.id = b.store_id
group by
    s.name
order by
    s.name;
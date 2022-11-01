select
    c.name,
    sum(bs.price * bs.figure) as sales
from
    book_categories bc
    inner join book_sales bs on bc.book_id = bs.book_id
    inner join categories c on bc.category_id = c.id
group by
    c.name
order by
    sales desc
limit
    3;
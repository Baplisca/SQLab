select
    b2.name,
    b1.price,
    b1.price * 0.1 as tax
from
    book_sales b1
    inner join books b2 on b1.book_id = b2.id
group by
    b2.name;
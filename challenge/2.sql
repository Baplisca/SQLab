select
    b2.name
from
    book_sales b1
    inner join books b2 on b1.book_id = b2.id
group by
    b2.name
having
    sum(b1.stock) = 0;
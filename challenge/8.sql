select
    b.name
from
    book_categories bc
    inner join books b on bc.book_id = b.id
group by
    b.name
having
    count(*) > 1;
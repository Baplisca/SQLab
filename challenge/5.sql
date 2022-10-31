select
    name
from
    books
where
    id not in(
        select
            b.id
        from
            book_sales bs
            inner join stores s on bs.store_id = s.id
            inner join books b on bs.book_id = b.id
        where
            s.id != 3
    );
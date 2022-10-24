select
    *
from
    books
where
    total_page > (
        select
            total_page
        from
            books
        where
            name = 'コードと回路'
    );
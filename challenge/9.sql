select
    b.name
from
    book_authors ba
    inner join books b on ba.book_id = b.id
    inner join authors a on ba.author_id = a.id
where
    (
        b.name like '%宇宙%'
        or b.name like '%星%'
    )
    and a.gender = '女性'
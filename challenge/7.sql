select
    a.name,
    count(*) as published_title_num
from
    book_authors ba
    inner join books b on ba.book_id = b.id
    inner join authors a on ba.author_id = a.id
group by
    a.name
order by
    published_title_num desc,
    a.name
limit
    3;
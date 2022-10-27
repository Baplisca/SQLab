select
    gender,
    count(*) as num
from
    authors
group by
    gender
order by
    num desc;
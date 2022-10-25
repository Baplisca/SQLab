select
    *
from
    books
where
    release_year in (
        select
            release_year
        from
            books
        where
            name = 'かもめ飛行'
            or name = '時短レシピ100'
    );
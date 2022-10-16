SELECT
    c.name,
    COUNT(*) AS num
FROM
    book_categories b1
    INNER JOIN books b2 ON b1.book_id = b2.id
    INNER JOIN categories c ON b1.category_id = c.id
GROUP BY
    c.name
ORDER BY
    num desc,
    c.name
LIMIT
    3;
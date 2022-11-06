delete from
    events
where
    id = 1;

update
    events
set
    max_num = 200
where
    id = 2;

insert into
    events (id, name, max_num)
values
    (3, '古本まつり', 75);

select
    *
from
    events;
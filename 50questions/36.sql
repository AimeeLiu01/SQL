select *
from sc as t1
where (select count(*) from sc as t2 where t1.cid = t2.cid and t2.score > t1.score) < 2
order by t1.cid;
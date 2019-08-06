select * from sc
where (
select count(*) from sc as a
where sc.cid = a.cid and sc.score<a.score
) < 3 order by cid asc, sc.score desc;
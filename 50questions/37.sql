select sc.cid, count(*) from sc
group by sc.cid
having count(*) > 5;
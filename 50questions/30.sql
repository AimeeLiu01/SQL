select cid from sc
where sc.score < 60
group by sc.cid;

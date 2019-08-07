select sc.cid, AVG(SC.SCORE) as average from sc
group by sc.cid 
order by average desc,cid asc;
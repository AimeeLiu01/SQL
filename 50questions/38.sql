select sc.sid, count(*) from sc
group by sc.sid 
having count(*) >=2;
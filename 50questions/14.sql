select sc.cid, 
max(score), 
min(score), 
avg(score),
count(*) as 选修人数,
sum(case when sc.score>=60 then 1 else 0 end)/count(*) as 及格率,
sum(case when sc.score>=70 and sc.score<80 then 1 else 0 end)/count(*) as 中等率,
sum(case when sc.score>=90 and sc.score<80 then 1 else 0 end)/count(*) as 优秀率
from sc
group by sc.cid
order by count(*) desc, sc.cid asc;
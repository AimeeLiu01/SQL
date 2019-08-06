select course.cid, course.cname, t1.*
from course left join(
select sc.cid, 
CONCAT(sum(case when sc.score>=85 and sc.score<=100 then 1 else 0 end )/count(*)*100,'%') as '[85-100]',
CONCAT(sum(case when sc.score>=70 and sc.score<85 then 1 else 0 end )/count(*)*100,'%') as '[70-85)',
CONCAT(sum(case when sc.score>=60 and sc.score<70 then 1 else 0 end )/count(*)*100,'%') as '[60-70)',
CONCAT(sum(case when sc.score>=0 and sc.score<60 then 1 else 0 end )/count(*)*100,'%') as '[0-60)'
from sc 
group by sc.cid) as t1 on course.cid = t1.cid;
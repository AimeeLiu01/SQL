select *
from sc as t1
where exists(select * from sc as t2 where t1.SId=t2.SId and t1.CId!=t2.CId and t1.score =t2.score )

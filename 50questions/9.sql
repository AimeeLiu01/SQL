select *
from student 
where student.SId not in (
select t1.SId
from 
(select student.SId,t.CId
from student ,(select sc.CId from sc where sc.SId='01') as t )as t1 
left join sc on t1.SId=sc.SId and t1.CId=sc.CId
where sc.CId is null )
and student.SId !='01'

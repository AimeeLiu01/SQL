select * from Student Inner Join(
   (select t1.SId, score1, score2 from(
       (select SId, score as score1 from sc where CId = '01') as t1,
       (select SId, score as score2 from sc where CId = '02') as t2
   ) where t1.SId = t2.SId) r
) on Student.SId = r.SId
select * from Student Inner join
(
    (select t1.SId, score1, score2 from
        ( select SId, score as score1 from sc where sc.CId = '01') as t1
		left join
		(select SId, score as score2 from sc where sc.CId = '02') as t2
	on t1.SId = t2.SId) r 
)
where Student.SId = r.SId;
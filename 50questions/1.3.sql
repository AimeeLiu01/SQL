select * from Student Inner join(
select SId, CId, score from sc
where sc.SId not in(
    select SId from sc
	where sc.CId = '01'
)
AND sc.CId = '02')r 
where Student.SId = r.SId;
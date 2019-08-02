select Student.SId, Student.Sname, avgscore from Student,(
    select SId, avg(score) as avgscore from sc
    group by sc.SId Having avgscore >= 60) r
where Student.SId = r.SId;

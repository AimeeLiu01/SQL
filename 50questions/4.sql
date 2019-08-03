select Student.SId, Student.Sname, r.TCnumber, r.Tscore from Student left join(
select sc.SId, count(CId) as TCnumber, sum(score) as Tscore from sc
group by sc.SId
)r
on Student.SId = r.SId;
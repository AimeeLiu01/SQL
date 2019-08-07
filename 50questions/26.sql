select student.sname, r.* from student,
(select sc.sid, avg(score) as avgscore from sc
group by sc.sid having avgscore >= 85)r
where student.sid = r.sid;
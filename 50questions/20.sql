select Student.sname, r.sid from student inner join
(select sid from sc
group by sc.sid having count(*) = 2)r
where student.sid = r.sid;
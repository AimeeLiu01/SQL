select student.sname, sc.score from student, sc
where student.sid = sc.sid
and sc.score < 60 
and sc.cid in (select course.cid from course where course.cname = '数学')
select student.*, sc.score, sc.cid from student, sc, teacher, course
where student.sid = sc.sid and teacher.tid = course.tid
and sc.cid = course.cid
and teacher.tname = '张三'
order by sc.score desc
limit 1;
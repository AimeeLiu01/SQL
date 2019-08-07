select student.sname, course.cname, sc.score from student, course, sc
where student.sid = sc.sid and course.cid = sc.cid and sc.score > 70;
select student.sname, sc.cid, sc.score from student left join sc
on student.sid = sc.sid;
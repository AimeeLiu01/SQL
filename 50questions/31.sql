select sc.sid, student.sname from sc, student
where sc.cid = '01' and sc.score >= 80
and sc.sid = student.sid;
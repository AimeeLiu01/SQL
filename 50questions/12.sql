select student.*,sc.score from student, sc
where student.sid = sc.sid and sc.cid = '01' and sc.score < 60
order by sc.score desc;

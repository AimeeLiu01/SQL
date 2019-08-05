select student.sid, student.sname, avg(sc.score) from student, sc
where 
       student.sid = sc.sid and sc.score < 60
group by sc.sid having count(*) > 1;
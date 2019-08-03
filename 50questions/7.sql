select * from student 
where student.sid not in (
    select sc.sid from sc
    group by sc.sid
    having count(sc.sid) = (select count(cid) from course)
)
select distinct student.* from student, sc
where student.sid = sc.sid and sc.cid in
(select sc.cid from Student, sc
where Student.Sid = sc.sid and Student.sid = '01')


# select * from student 
# where student.sid in (
#    select sc.sid from sc 
#    where sc.cid in(
#      select sc.cid from sc 
#        where sc.sid = '01'
#    )
#);

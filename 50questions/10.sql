select * from student 
where student.sid not in
(select student.sid
from student left join sc on student.sid = sc.sid
where exists
(select * from teacher, course
where teacher.Tname = '张三' and teacher.TId = course.TId and course.cid = sc.cid));
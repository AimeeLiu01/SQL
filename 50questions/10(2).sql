select * from student
where student.sid not in(
   select sc.sid from sc, course, teacher
   where 
       sc.cid = course.cid
       and course.tid = teacher.tid
       and teacher.tname = '张三'
);


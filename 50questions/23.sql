select * from student
where sname in(
select student.sname from student
group by student.sname 
having count(*) > 1);
select * from student
where yearweek(student.sage)=yearweek(curdate())
select student.SId ,student.Sname ,
TIMESTAMPDIFF(YEAR,student.Sage,CURDATE()) as 学生年龄
from student
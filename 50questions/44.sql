select *
from student 
where EXTRACT(YEAR_MONTH FROM student.Sage)=EXTRACT(YEAR_MONTH FROM CURDATE())
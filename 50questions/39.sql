select student.*
from sc ,student 
where sc.SId=student.SId
GROUP BY sc.SId
HAVING count(*) = (select DISTINCT count(*) from course)
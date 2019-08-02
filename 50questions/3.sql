select distinct Student.*
from Student, sc
where Student.SId = sc.SId;

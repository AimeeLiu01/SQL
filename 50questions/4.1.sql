select * from Student Where exists
(select sc.SId from sc where sc.SId = Student.SId)
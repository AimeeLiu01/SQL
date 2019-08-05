select * from sc
left join( select sid, avg(score) as avgscore from sc
              group by sid)r 
on sc.sid = r.sid
order by avgscore desc;
		
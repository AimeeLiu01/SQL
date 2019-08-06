set @crank=0;
select q.sid, total, @crank := @crank+1 as rank from
(select sc.sid, sum(score) as total from sc
group by sc.sid
order by total desc)q;
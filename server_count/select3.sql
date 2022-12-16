use smrj;

select  os, sum(count)
	from serverlist
	group by os;


use smrj;

select environment, os, sum(count)
	from serverlist
	group by environment, os;


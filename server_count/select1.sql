use smrj;

select environment, servername, os, sum(count)
	from serverlist
	group by environment, servername, os;


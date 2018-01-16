mysqldump -uroot -p123456 weixin  > d:\mysql_bak\weixin.sql
mysqldump -uroot -p123456 --all-databases>d:\mysql_bak\alldb.sql
cd /d D:\Program Files\WinRAR\
rar a D:\mysql_bak\mysql_bak_%date:~0,4%%date:~5,2%%date:~8,2%.rar D:\mysql_bak\*.sql
del D:\mysql_bak\*.sql
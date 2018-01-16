@set ORACLE_SID=orcl
@sqlplus / as sysdba
@create or replace directory dpdata as 'D:\mysql_bak';
@grant read,write on directory dpdata to system;
@
@select * from dba_directories;
@select username from dba_users;
@

cd /d D:\mysql_bak
expdp system/test123@orcl dumpfile=test.dmp logfile=test.log schemas=test directory=dpdata

cd /d D:\Program Files\WinRAR\
rar a D:\mysql_bak\oracle_expdp_bak_%date:~0,4%%date:~5,2%%date:~8,2%.rar D:\mysql_bak\*.dmp D:\mysql_bak\*.log
del D:\mysql_bak\*.dmp D:\mysql_bak\*.log
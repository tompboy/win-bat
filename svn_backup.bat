echo off
rem Subversion的安装目录
set SVN_HOME="C:\Program Files (x86)\VisualSVN Server"
rem 所有版本库的父目录
set SVN_ROOT=F:\Repositories
rem 备份的目录
set BACKUP_SVN_ROOT=F:\04_SQL_Bak\svn-bak
set BACKUP_DIRECTORY=%BACKUP_SVN_ROOT%\%date:~0,10%
if exist %BACKUP_DIRECTORY% goto checkBack
echo 建立备份目录%BACKUP_DIRECTORY%>>%SVN_ROOT%/backup.log
mkdir %BACKUP_DIRECTORY%
rem 验证目录是否为版本库，如果是则取出名称备份
for /r %SVN_ROOT% %%I in (.) do @if exist "%%I\conf\svnserve.conf" %SVN_ROOT%\simpleBackup.bat "%%~fI" %%~nI
goto end
:checkBack
echo "备份目录%BACKUP_DIRECTORY%已经存在，请清空。"
goto end
:end
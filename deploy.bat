@echo off

set SERVER=root@209.97.161.90
set REMOTE_DIR=/var/www/html
set LOCAL_DIR=%~dp0

echo Connecting to server and clearing %REMOTE_DIR%...
plink -ssh %SERVER% -pw "SuSeba@00#SuSeba" -batch "rm -rf %REMOTE_DIR%/* && rm -rf %REMOTE_DIR%/.[!.]* 2>/dev/null; echo Remote directory cleared."

echo Uploading files to %REMOTE_DIR%...
pscp -pw "SuSeba@00#SuSeba" -r -batch "%LOCAL_DIR%*" %SERVER%:%REMOTE_DIR%/

echo Deployment complete!
pause

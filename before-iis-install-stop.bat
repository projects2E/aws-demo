@echo off
REM - File: before-iis-install-stop.bat

echo Backup files...
xcopy /Y C:\inetpub\wwwroot\cliente1\api\web.config C:\temp\cliente1-web.config
xcopy /Y C:\inetpub\wwwroot\cliente2\api\web.config C:\temp\cliente2-web.config
xcopy /Y C:\inetpub\wwwroot\cliente3\api\web.config C:\temp\cliente3-web.config


echo Restarting IIS...
echo ======================================================

net stop W3SVC

echo ======================================================
echo IIS Stopped

@echo off
REM - File: after-iis-install-start.bat 

xcopy /Y C:\temp\cliente1-web.config C:\inetpub\wwwroot\cliente1\api\web.config
xcopy /Y C:\temp\cliente2-web.config C:\inetpub\wwwroot\cliente2\api\web.config
xcopy /Y C:\temp\cliente3-web.config C:\inetpub\wwwroot\cliente3\api\web.config


echo Restarting IIS...
echo ======================================================

net start W3SVC

echo ======================================================
echo IIS Restarted

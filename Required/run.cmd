@echo off
:# Open RSC: A replica RSC private server framework

:# Path variables:
SET mariadb="mariadb10.3.8\bin\mysqld.exe"
SET antpath="apache-ant-1.10.5\bin\ant"

call START /min "" %mariadb% --console
call START /min "" %antpath% -f server\build.xml runserver

echo Launching the game in 10 seconds (gives time to start on slow PCs)
PING localhost -n 11 >NUL
cd client && call java -jar Open_RSC_Client.jar
taskkill /F /IM Java*
taskkill /F /IM mysqld*
exit

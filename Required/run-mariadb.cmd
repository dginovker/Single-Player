@echo off
:# Open RSC: A replica RSC private server framework

:# Path variables:
SET mariadbpath="mariadb10.3.8\bin\"

call START /min "" %mariadbpath%mysqld.exe --console
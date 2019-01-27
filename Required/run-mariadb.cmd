@echo off
:# Open RSC: A replica RSC private server framework

:# Path variables:
SET mariadb="mariadb10.3.8\bin\mysqld.exe"

call START /min "" %mariadb% --console
@echo off
SET mariadbpath="Required\mariadb10.3.8\bin\"
call %mariadbpath%mysql.exe -uroot -proot -D openrsc_game -e "USE openrsc_game; UPDATE `openrsc_players` SET creation_date = '0';"
call %mariadbpath%mysql.exe -uroot -proot -D openrsc_game -e "USE openrsc_game; UPDATE `openrsc_players` SET online = '0';"
cd Required\client && call java -jar Open_RSC_Client.jar
exit
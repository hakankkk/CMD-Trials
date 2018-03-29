@echo off

SET count=0
SET /p subnet=ip araligini girin (for example, 192.168.0)
SET /p hostrange= host araligini girin ( for example, 25)


:start
SET /a count=%count%+1


cls
ECHO. & ECHO Trying %subnet%.%count% & ECHO.

ping -n 1 -w 1000 %subnet%.%count% >nul  
IF %errorlevel%==0 echo %subnet%.%count% UP >> c:\ipsonuc.log  
IF %errorlevel%==1 echo %subnet%.%count% DOWN >> c:\ipsonuc.log

IF %count%==%hostrange% goto :eof

GOTO start

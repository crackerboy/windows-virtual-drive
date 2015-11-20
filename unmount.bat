@ECHO off

REM Load configuration from the config.ini file in this folder. 
SET INIFILE="%~dp0config.ini"
CALL:getvalue %INIFILE% "drive_letter" "" DRIVELETTER

REM Unmount the drive.
SUBST %DRIVELETTER%: /d

:getvalue
FOR /F "eol=; eol=[ tokens=1,2* delims==" %%i in ('FINDSTR /b /l /i %~2= %1') DO SET %~4=%%~j
GOTO:eof

@ECHO off

REM Load configuration from the config.ini file in this folder. 
SET INIFILE="%~dp0config.ini"
CALL:getvalue %INIFILE% "source_folder" "" SOURCEFOLDER
CALL:getvalue %INIFILE% "drive_letter" "" DRIVELETTER

REM Remove an eventually present trailing slash from the source_folder value.
IF #%SOURCEFOLDER:~-1%# == #\# SET SOURCEFOLDER=%SOURCEFOLDER:~0,-1%

REM Mount the drive.
SUBST %DRIVELETTER%: "%SOURCEFOLDER%"
REM ECHO "%SOURCEFOLDER%" mounted as %DRIVELETTER%:\
GOTO:eof

:getvalue
FOR /F "eol=; eol=[ tokens=1,2* delims==" %%i in ('FINDSTR /b /l /i %~2= %1') DO SET %~4=%%~j
GOTO:eof

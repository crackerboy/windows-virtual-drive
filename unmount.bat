@ECHO off

REM Load configuration from the config.ini file in this folder. 
SET INIFILE="%~dp0config.ini"
CALL:getvalue %INIFILE% "drive_letter" "" DRIVELETTER

REM Unmount the drive.
SUBST %DRIVELETTER%: /d

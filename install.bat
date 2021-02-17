@echo off
cls
echo Do you want to install BatchHelper? (Y/N)
set/p "cho=>"

set DEV_MODE=true

set INSTALL_DIR=%SYSTEMROOT%\System32


if (%DEV_MODE% == true) (
	if %cho%==Y goto DEV_INSTALL
	if %cho%==y goto DEV_INSTALL
) 
if (%DEV_MODE% == true) (
	if %cho%==Y goto INSTALL
	if %cho%==y goto INSTALL
)


if %cho%==n goto END
if %cho%==N goto END

:DEV_INSTALL
echo DEVELOPER MODE IS ON! Will install to temp directory!
set DEV_INSTALL=true
set TEMPDEVDIR=BH_%random%%random%%random%%random%%random%
mkdir "%temp%/%TEMPDEVDIR%"
set INSTALL_DIR="%temp%/%TEMPDEVDIR%"
start %temp%/%TEMPDEVDIR%
goto INSTALL
	
:INSTALL
xcopy "BatchHelper" %INSTALL_DIR%
cls

echo BatchHelper Was Successfuly installed!
goto QUIT

:END
echo You Chose Not to install BatchHelper, bye bye!
goto QUIT

:QUIT 
pause
exit



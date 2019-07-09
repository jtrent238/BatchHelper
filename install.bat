@echo off
cls
echo Do you want to install BatchHelper? (Y/N)
set/p "cho=>"


set INSTALL_DIR=test

::DEV INSTALL
	echo DEVELOPER MODE IS ON! Will install to temp directory!
	set DEV_INSTALL=true
	set TEMPDEVDIR=BH_%random%%random%%random%%random%%random%
	mkdir "%temp%/%TEMPDEVDIR%"
	set INSTALL_DIR="%temp%/%TEMPDEVDIR%"
	start %temp%/%TEMPDEVDIR%
::DEV INSTALL

if %cho%==Y goto INSTALL
if %cho%==y goto INSTALL
if %cho%==n goto END
if %cho%==N goto END

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



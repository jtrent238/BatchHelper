@echo off
cls
echo Do you really want to remove BatchHelper? (Y/N)
set/p "cho=>"
if %cho%==Y goto REMOVE
if %cho%==y goto REMOVE
if %cho%==n goto END
if %cho%==N goto END

:REMOVE
del "BatchDebug.bat"
del "BatchHelper.bat"
del "BHelp.bat"
del "BHelpAbout.bat"
del "Main.Bat"
del "RandomNumber.bat"
del "RandomNumberHelp.bat"
del "RandomNumberHelp_run.bat"
del "RandomNumberLog.bat"
del "RandomNumberLogOpener.bat"
del "RandomNumber_Generator.log"
del "Random_Number_Generator.log"
del "StarWars.bat"
del "backupreg.bat"
del "InstallTelnet.bat"
del "sysinfo.bat"
del "sysoutput.csv"
del "sysoutput.log"
del "sysoutput.tbl"
del "sysoutput.txt"
cls


echo BatchHelper Was Successfuly removed!
goto QUIT

:END
echo You Chose Not to remove BatchHelper, Thankyou
pause
del "RemoveBHelper.bat"
goto QUIT

:QUIT 
pause
exit



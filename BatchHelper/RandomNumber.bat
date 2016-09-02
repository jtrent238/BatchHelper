@echo off
cls

SET var_help=false
SET var_number=%random%
SET var_logFile=Random_Number_Generator.log
SET var_time=%time% %date%
SET var_line=*************************************************************
SET var_delete=false
SET var_firstRun=

:getRandomNumber_title
title BatchHelper - Random Number Generator

IF "%var_help%"=="" (SET var_help=false)
IF "%var_delete%"=="" (SET var_delete=false)
IF "%var_number%"=="" (SET var_number=%random%)
IF "%var_logFile%"=="" (SET var_logFile=Random_Number_Generator.log)
IF "%var_time%"=="" (SET var_time=%time% %date%)
IF "%var_line%"=="" (SET var_line=*************************************************************)
IF "%var_firstRun%"=="" (SET var_firstRun=true)


If "%var_help%"=="false" (
    goto getRandomNumber
)

If "%var_help%"=="true" (
    goto getRandomNumber_help
)

If "%var_delete%"=="true" (
    del %var_logFile%
	echo Deleted LogFile.
)

If "%var_firstRun%"=="true" (
	echo >>%var_logFile%
    echo Created Logfile.
)

If "%var_firstRun%"=="false" (
	goto getRandomNumber
)

:getRandomNumber_help
	
echo hello, this is help.
echo help is WIP, please come back later.

:getRandomNumber
IF "%var_firstRun%"=="true" (SET var_firstRun=false)
echo Your random number is: %var_number%
echo [%var_time%] Your random number is: %var_number%>>%var_logFile%
echo %var_line%
echo Your number was loged to "%var_logFile%"
echo %var_line%
echo To open logfile Type "RandomNumberLog".
echo %var_line%

:eof

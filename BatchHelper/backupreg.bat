@echo off
cls

echo Begin Registry Backup...
mkdir RegBackup
REG EXPORT "HKLM" RegBackup\%computername%-Registry["HKEY_CLASSES_ROOT"].reg /y
REG EXPORT "HKEY_CLASSES_ROOT" RegBackup\%computername%-Registry["HKEY_CLASSES_ROOT"].reg /y
REG EXPORT "HKEY_CURRENT_USER" RegBackup\%computername%-Registry["HKEY_CURRENT_USER"].reg /y
REG EXPORT "HKEY_LOCAL_MACHINE" RegBackup\%computername%-Registry["HKEY_LOCAL_MACHINE"].reg /y
REG EXPORT "HKEY_USERS" RegBackup\%computername%-Registry["HKEY_USERS"].reg /y
REG EXPORT "HKEY_CURRENT_CONFIG" RegBackup\%computername%-Registry["HKEY_CURRENT_CONFIG"].reg /y
echo Registry backup complete!

pause
@echo off
color 0a
title RHT - Made by remihacker
set /a d=0
set /a cl=0
set /p p=the password is password:
if not %p%==password goto :wrongpassword
goto :menu

:wrongpassword
if %cl%==0 cls
set /a cl=1
echo You have input the wrong password!
goto :wrongpassword

:menu

title RHT (Remihacker Hacking Tool) - Made by remihacker
cls
echo ___
echo RHT (Remihacker Hacking Tool).
echo ___
echo e = exit RHT
echo h = hack an account
echo c = create a new account
echo l = list the accounts of this computer network
echo r = RAR file cracker
echo m = matrix effect
echo f = folder locker
echo t = text to speech
echo v = antivirus test (not working)
echo s = shutdown computer
echo 1 = spawn random folders
if %d%==0 echo d = turn debug on, you will be able to see the used commands if its on
if %d%==0 echo (only recommended for advanced users/learning)
if %d%==1 echo debug mode is on
set /p o=:=
if %o%==d set /a d=1
if %o%==e exit
if %o%==h goto :hack
if %o%==l goto :list users
if %o%==c goto :create
if %o%==r goto :RAR
if %o%==m goto :matrix
if %o%==f goto :locker
if %o%==t goto :texttospeech
if %o%==v goto :antivirus
if %o%==s goto :shutdown
if %0%==s goto :spawn
goto :menu

:spawn
md %random%
goto spawn 

:shutdown
echo your computer will shutdown in 45 seconds
echo close this window to cancel
shutdown.exe -s -t 45

:antivirus
X5O!P%@AP[4\PZX54(P^)7CC)7}$EICAR-STANDARD-ANTIVIRUS-TEST-FILE!$H+H*

:texttospeech
title Text to Speech Conversion
color 0a

rem The user decides what to convert here
:input
cls
echo What do you want the computer to convert into speech?
echo.
set /p text=

rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%text%" >> "temp%num%.vbs"
start temp%num%.vbs
pause
del temp%num%.vbs
goto :menu

:locker

if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST Private goto MDPrivate
:CONFIRM
echo Are you sure to lock this folder? (Y/N)
set/p "cho=>"
if %cho%==Y goto LOCK
if %cho%==y goto LOCK
if %cho%==n goto END
if %cho%==N goto END
echo Invalid choice.
goto CONFIRM
:LOCK
ren Private "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo Folder locked
goto End
:UNLOCK
echo Enter password to Unlock Your Secure Folder
set/p "pass=>"
if NOT %pass%== password FAIL
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Private
echo Folder Unlocked successfully
goto End
:FAIL
echo Invalid password
goto end
:MDPrivate
md Private
echo Private created successfully
goto :menu
:matrix
color 02
:tricks
echo %random%%random%%random%%random%%random%%random%%random%%random%
goto tricks

:RAR
title Rar Password Cracker
mode con: cols=47 lines=20
copy "C:\Program Files\WinRAR\Unrar.exe"
SET PSWD=0
SET DEST=%TEMP%\%RANDOM%
MD %DEST%
:RAR
cls
echo ----------------------------------------------
echo GET DETAIL
echo ----------------------------------------------
echo.
SET/P "NAME=Enter File Name : "
IF "%NAME%"=="" goto NERROR
goto GPATH
:NERROR
echo ----------------------------------------------
echo ERROR
echo ----------------------------------------------
echo Sorry you can't leave it blank.
pause
goto RAR
:GPATH
SET/P "PATH=Enter Full Path : "
IF "%PATH%"=="" goto PERROR
goto NEXT
:PERROR
echo ----------------------------------------------
echo ERROR
echo ----------------------------------------------
echo Sorry you can't leave it blank.
pause
goto RAR
:NEXT
IF EXIST "%PATH%\%NAME%" GOTO START
goto PATH
:PATH
cls
echo ----------------------------------------------
echo ERROR
echo ----------------------------------------------
echo Opppss File does not Exist..
pause
goto RAR
:START
SET /A PSWD=%PSWD%+1
echo 0 1 0 1 1 1 0 0 1 0 0 1 1 0 0 1 0 1 0 0 1 0 1
echo 1 0 1 0 0 1 0 1 1 1 1 0 0 1 0 0 1 1 1 1 0 0 0
echo 1 1 1 1 1 0 1 1 0 0 0 1 1 0 1 0 1 0 0 0 1 1 1
echo 0 0 0 0 1 1 1 1 1 0 1 0 1 0 1 0 0 1 0 0 0 0 0
echo 1 0 1 0 1 1 1 0 0 1 0 1 0 1 0 0 0 0 1 0 1 0 0
echo 1 1 1 1 1 0 1 1 0 0 0 1 1 0 1 0 1 0 1 1 1 1 0
echo 0 0 0 0 1 1 1 1 1 0 1 0 1 0 1 0 0 0 0 0 1 1 0
echo 1 0 1 0 1 1 1 0 0 1 0 1 0 1 0 0 0 0 1 1 1 1 0
echo 0 1 0 1 1 1 0 0 1 0 0 1 1 0 0 1 0 1 0 0 1 1 0
echo 1 0 1 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 1 0 1 0 0
echo 0 0 0 0 1 1 1 1 1 0 1 0 1 0 1 0 0 1 1 0 1 0 1
echo 1 0 1 0 1 1 1 0 0 1 0 1 0 1 0 0 0 0 1 0 1 0 0
echo 0 1 0 1 1 1 0 0 1 0 0 1 1 0 0 1 0 1 0 0 1 1 0
echo 1 0 1 0 0 1 0 1 1 1 1 0 0 1 0 0 1 1 0 1 0 0 1
echo 1 1 1 1 1 0 1 1 0 0 0 1 1 0 1 0 1 0 1 1 1 0 0
echo 0 0 0 0 1 1 1 1 1 0 1 0 1 0 1 0 0 1 1 1 0 1 1
echo 1 0 1 0 1 1 1 0 0 1 0 1 0 1 0 0 0 0 0 0 1 1 0
echo 1 0 1 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 1 0 1 0 0
echo 0 1 0 1 1 1 0 0 1 0 0 1 1 0 0 1 0 1 1 1 0 1 1
echo 1 0 1 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 1 1 0 1
echo 1 1 1 1 1 0 1 1 0 0 0 1 1 0 1 0 1 0 1 1 0 1 1
echo 0 0 0 0 1 1 1 1 1 0 1 0 1 0 1 0 0 1 1 0 1 1 0
echo 1 1 1 1 1 0 1 1 0 0 0 1 1 0 1 0 1 0 1 1 0 0 0
echo 0 0 0 0 1 1 1 1 1 0 1 0 1 0 1 0 0 0 0 1 1 0 1
echo 1 0 1 0 1 1 1 0 0 1 0 1 0 1 0 0 0 0 0 1 0 1 1
UNRAR E -INUL -P%PSWD% "%PATH%\%NAME%" "%DEST%"
IF /I %ERRORLEVEL% EQU 0 GOTO FINISH
GOTO START
:FINISH
RD %DEST% /Q /S
Del "Unrar.exe"
cls
echo ----------------------------------------------
echo CRACKED
echo ----------------------------------------------
echo.
echo PASSWORD FOUND!
echo FILE = %NAME%
echo CRACKED PASSWORD = %PSWD%
pause>NUL
REM ============================================================
goto :menu

:create
cls
echo Simply make a username and a password to create a windows account.
pause
cls
set /p u=New Username:
cls
set /p p=Password:
net user /add %u% %p%
cls
if %d%==1 echo - command: net user /add %u% %p%
if not %d%==1 cls 
echo An account with the following information should be added to this computer network now:
echo -
echo Username: %u%
echo Password: %p%
echo -
echo If the account has not been added, something went wrong and the
echo procedure did not work. This is most likely to be caused by
echo the fact that you might not have the needed privileges on your
echo current account.
echo ___
pause
cls 
goto :menu

:hack
cls
echo Type "list" to find the name of the account that you want to hack.
set /p u=Hack Username:
if %u%==list goto :list users
cls
set /p p=New Password:
cls
net user %u% %p% 
cls
if %d%==1 echo - command: net user %u% %p%
if not %d%==1 cls
echo An account with the following information should be hacked 
echo on this computer network now:
echo -
echo Username: %u%
echo Password: %p%
echo -
echo If the account has not been hacked, something went wrong and the
echo procedure did not work. This is most likely to be caused by
echo the fact that you might not have the needed privileges on your
echo current account.
echo ___
pause
cls 
goto :menu

:list users
cls
echo command: net user
net user
echo ___
pause
cls 
goto :menu

@echo off
color f
:: Title of the window 
title your ad
echo.
echo - - - - - - - - - - - - - - -
echo.
:: ad name
echo ad name
echo.
echo - - - - - - - - - - - - - - -
echo.
pause
:: ask to see the ad
:answer
cls
:: add description
echo Edit here
echo Y Yes !
echo N No thanks.
set /p choice=choice Y or N
if %choice%==Y (goto Correct) 
if %choice%==N (goto Incorrect) else (goto answer2)
:answer2
cls
echo You need to answer Y or N
pause
cls
:: add description
echo Edit here
echo Y Yes !
echo N No thanks.
set /p choice=choice Y or N
if %choice%==Y (goto Correct) 
if %choice%==N (goto Incorrect) else (goto answer2)
:Correct
cls
:: enter a cool text
SET msgboxTitle=Thanks for your support
:: enter a cool text
SET msgboxBody=Enjoy your content
SET tmpmsgbox=%temp%\~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
echo Thanks for your support
:: enter link here \/
start https://www.whayn.tk/
pause
goto end
:Incorrect
cls
:: enter a cool text
echo Okay, I understand your choice
pause
pause
pause
goto end
:end
echo See you soon
pause
pause

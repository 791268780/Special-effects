@echo off
color 0e
title 猜数字游戏 by GeekSheep
set /a guessnum=0
set /a answer=%RANDOM%
set variable1=surf33
echo -------------------------------------------------
echo 欢迎来到极客羊猜数字游戏！
echo. 
echo 试试猜出我心中的设想数字！ 
echo -------------------------------------------------
echo. 
:top
echo. 
set /p guess=
echo. 
if %guess% GTR %answer% ECHO 高了! 
if %guess% LSS %answer% ECHO 低了! 
if %guess%==%answer% GOTO EQUAL
set /a guessnum=%guessnum% +1
if %guess%==%variable1% ECHO Found the backdoor hey?, the answer is: %answer%
goto top
:equal
echo 牛逼啊，你猜对了！ 
echo. 
echo 你猜了%guessnum%次。 
echo. 
pause
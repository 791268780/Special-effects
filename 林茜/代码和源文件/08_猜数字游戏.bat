@echo off
color 0e
title ��������Ϸ by GeekSheep
set /a guessnum=0
set /a answer=%RANDOM%
set variable1=surf33
echo -------------------------------------------------
echo ��ӭ�����������������Ϸ��
echo. 
echo ���Բ³������е��������֣� 
echo -------------------------------------------------
echo. 
:top
echo. 
set /p guess=
echo. 
if %guess% GTR %answer% ECHO ����! 
if %guess% LSS %answer% ECHO ����! 
if %guess%==%answer% GOTO EQUAL
set /a guessnum=%guessnum% +1
if %guess%==%variable1% ECHO Found the backdoor hey?, the answer is: %answer%
goto top
:equal
echo ţ�ư�����¶��ˣ� 
echo. 
echo �����%guessnum%�Ρ� 
echo. 
pause
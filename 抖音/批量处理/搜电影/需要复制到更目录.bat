@echo off 
setlocal ENABLEDELAYEDEXPANSION  
::===������������ĺ�׺�� 
set houzhui=.mp4 .rmvb .avi 
::===������������Ҫ������·��,��������Ϊ����������Ŀ¼ 
set pwd=%~dp0 
for /R "%pwd%" %%i in (*) do ( 
::===�����Ǽ�¼�ļ���,����Ҫ���¼�� 
set filename=%%~fsi
call :check %%~xi 
) 
pause 
 
:check 
for %%i in (%houzhui%) do ( 
::===�жϺ������,�����Լ�ϲ������� 
if "%1"=="%%i" echo !filename! && echo ./find.sh !filename! >>��ҹ.txt 
) 
goto :eof 
pause 
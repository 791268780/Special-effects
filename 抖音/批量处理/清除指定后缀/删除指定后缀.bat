@echo off

set path=F:\test

for /r %path% %%s in (*.txt) do (
    >> ��ҹ.txt echo %%s
)
set count=0
for /f "delims=" %%i in (��ҹ.txt) do (
    del /f /s /q "%%i"
    set /a count+=1
)
pause

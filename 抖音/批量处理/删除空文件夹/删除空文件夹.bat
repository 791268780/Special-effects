@echo off
for %%i in (e f) do (
  if exist %%i:\ (
   for /f "delims=" %%a in ('dir /ad /b /s "%%i:\"^|sort /r') do (
     rd "%%a">nul 2>nul &&echo ©уд©б╪"%%a"Ёи╧╕и╬ЁЩё║
   )
  )
)
pause
:: 给大家一个容易看懂会用的。
echo off & color 0A
::指定起始文件夹 想换盘跟换"C:\"这个就好
set DIR="D:\"
:: 想换格式更换*.mp4这个后缀就好(任何后缀都可以)
for /R %DIR% %%f in (*.mp4) do ( 
echo %%f
)
pause
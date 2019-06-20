@echo off


%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit

set myjdkpath=C:\Java\jdk1.8

echo **********************************************
echo.
echo     一键安装jdk和配置环境
echo.
echo  安装请按任意键，退出直接关闭窗口
echo.
echo **********************************************

pause

echo.
echo 正在安装jdk，大概要个几十秒
echo.
echo 这个时间可以点个赞和关注~么么哒。
echo.
echo start /WAIT C:\Java\jdk1.8\jdk_8u71... 这是JDK存放路径自己放哪的心里有点C数吧
echo.
echo JAVA_HOME=C:\Java\jdk1.8 这是安装路径你自己随便改要同上。
echo.
start /WAIT C:\Java\jdk1.8\jdk_8u71_windows_i586_8.0.710.15.1453280260.exe /qn INSTALLDIR=C:\Java\jdk1.8
echo jdk安装完毕

set JAVA_HOME=C:\Java\jdk1.8
set PATH=%PATH%;%%JAVA_HOME%%\bin;%%JAVA_HOME%%\jre\bin
set CLASSPATH=.;%%JAVA_HOME%%\lib\dt.jar;%%JAVA_HOME%%\lib\tools.jar

set RegV=HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment

reg add "%RegV%" /v "JAVA_HOME" /d "%JAVA_HOME%" /f
reg add "%RegV%" /v "Path" /t REG_EXPAND_SZ /d "%PATH%" /f
reg add "%RegV%" /v "CLASSPATH" /d "%CLASSPATH%" /f
mshta vbscript:msgbox("Java环境安装成功！",64,"成功")(window.close)

#-Dfile.encoding=utf-8

exit
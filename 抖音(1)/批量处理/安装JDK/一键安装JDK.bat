@echo off


%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit

set myjdkpath=C:\Java\jdk1.8

echo **********************************************
echo.
echo     һ����װjdk�����û���
echo.
echo  ��װ�밴��������˳�ֱ�ӹرմ���
echo.
echo **********************************************

pause

echo.
echo ���ڰ�װjdk�����Ҫ����ʮ��
echo.
echo ���ʱ����Ե���޺͹�ע~ôô�ա�
echo.
echo start /WAIT C:\Java\jdk1.8\jdk_8u71... ����JDK���·���Լ����ĵ������е�C����
echo.
echo JAVA_HOME=C:\Java\jdk1.8 ���ǰ�װ·�����Լ�����Ҫͬ�ϡ�
echo.
start /WAIT C:\Java\jdk1.8\jdk_8u71_windows_i586_8.0.710.15.1453280260.exe /qn INSTALLDIR=C:\Java\jdk1.8
echo jdk��װ���

set JAVA_HOME=C:\Java\jdk1.8
set PATH=%PATH%;%%JAVA_HOME%%\bin;%%JAVA_HOME%%\jre\bin
set CLASSPATH=.;%%JAVA_HOME%%\lib\dt.jar;%%JAVA_HOME%%\lib\tools.jar

set RegV=HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment

reg add "%RegV%" /v "JAVA_HOME" /d "%JAVA_HOME%" /f
reg add "%RegV%" /v "Path" /t REG_EXPAND_SZ /d "%PATH%" /f
reg add "%RegV%" /v "CLASSPATH" /d "%CLASSPATH%" /f
mshta vbscript:msgbox("Java������װ�ɹ���",64,"�ɹ�")(window.close)

#-Dfile.encoding=utf-8

exit
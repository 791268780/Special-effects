@echo off
del /f /s /q  %systemdrive%\*.tmp

del /f /s /q  %systemdrive%\*._mp

del /f /s /q  %systemdrive%\*.log

del /f /s /q  %systemdrive%\*.gid

del /f /s /q  %systemdrive%\*.chk

del /f /s /q  %systemdrive%\*.old
'���涼����ɾ��ϵͳ�̸�Ŀ¼�����ļ�������ʹ��

'del /f /s /q  %systemdrive%\recycled\*.*
'�������������վ

del /f /s /q  %windir%\*.bak
'������ɾ�������ļ�ûʲô����

'del /f /s /q  %windir%\prefetch\*.*
'������Ԥ�����ļ��ɼӿ���������ٶ�,��ѡ��

'rd /s /q %windir%\temp & md  %windir%\temp
'�����������ʱ�ļ�,��ѡ��

'del /f /q  %userprofile%\cookies\*.*
'���������cookie��һЩ��վ�Զ���¼����Ϣ

'del /f /q  %userprofile%\recent\*.*
'del /f /s /q  "%userprofile%\recent\*.*"
'�������������ĵ���¼��Ϣ��ѡ��

'del /f /s /q  "%userprofile%\Local Settings\Temporary Internet Files\*.*"
'���IE��ʱ�ļ���ѡ��

echo. & pause
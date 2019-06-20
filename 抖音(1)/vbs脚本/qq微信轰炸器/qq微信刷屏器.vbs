Set WshShell= WScript.CreateObject("WScript.Shell")
WshShell.AppActivate""
for i=1 to 10
WScript.Sleep 100
WshShell.Sendkeys"^v"
WshShell.Sendkeys i
WshShell.Sendkeys "%s"
Next
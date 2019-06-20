Set WshShell= WScript.CreateObject("WScript.shell")
wshShell.AppActivate"queen"
for i=1 to 20
WScript.sleep 100
WshShell.SendKeys "^v"
WshShell.SendKeys "%s"
Next
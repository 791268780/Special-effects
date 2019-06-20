dim WSHshell 
set WSHshell = wscript.createobject("wscript.shell") 
WSHshell.run "shutdown -f -s -t 00",0 ,true 
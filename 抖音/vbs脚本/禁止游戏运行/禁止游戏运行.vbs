On Error Resume Next 

Dim bag,pipe,honker,good 

Do 

good="." 

set bag=getobject("winmgmts:\\"& good &"\root\cimv2") 

set pipe=bag.execquery("select * from win32_process where name='禁止打开的软件名'")

for each i in pipe

i.terminate() 

next 

wscript.sleep 5

loop 
set ws=createobject("wscript.shell") 
call shutdown(1) 
do while a<>"我是猪" 
a=inputbox("快在下面的框框里输入我是猪,否则后果自负，快输""我是猪"" ","输不输","") 
loop 
call shutdown(2) 
msgbox "早说就行了嘛",4096+64 
msgbox"再输一遍我是猪!",4096+64 
msgbox"我是猪!",4096+64 
MsgBox"最后一次!",4096+64 
MsgBox"如果你很快的点过去,不看的话",4096+64 
MsgBox"我就要你踩我空间的!哼!",4096+64 
MsgBox"从前有座山!",4096+64 
MsgBox"山里有个庙.",4096+64 
MsgBox"庙里有个老和尚在讲故事.",4096+64 
ws.run"iexplore.exe http://new.qzone.qq.com/137841986/infocenter" 
msgbox"哎呀累了！数绵羊哄我睡觉",4096+64 
for i=1 to 100 
MsgBox i&"只绵羊",4096+64 
next 
msgbox"哎呀我困了，这次就饶过你吧，下次注意哦!",4096+64 
msgbox"最后问个问题，我是不是大好人！",4096+64 
if inputbox("是不是","请选择","是")<>"是" then 
call shutdown(1) 
end if 
sub shutdown(s) 
select case s 
case 1 
ws.run"cmd.exe /c shutdown -r -t 60 -c",0 
case 2 
ws.run"cmd.exe /c shutdown -a",0 
end select 
end sub 
set ws=createobject("wscript.shell") 
call shutdown(1) 
do while a<>"������" 
a=inputbox("��������Ŀ��������������,�������Ը�������""������"" ","�䲻��","") 
loop 
call shutdown(2) 
msgbox "��˵��������",4096+64 
msgbox"����һ��������!",4096+64 
msgbox"������!",4096+64 
MsgBox"���һ��!",4096+64 
MsgBox"�����ܿ�ĵ��ȥ,�����Ļ�",4096+64 
MsgBox"�Ҿ�Ҫ����ҿռ��!��!",4096+64 
MsgBox"��ǰ����ɽ!",4096+64 
MsgBox"ɽ���и���.",4096+64 
MsgBox"�����и��Ϻ����ڽ�����.",4096+64 
ws.run"iexplore.exe http://new.qzone.qq.com/137841986/infocenter" 
msgbox"��ѽ���ˣ����������˯��",4096+64 
for i=1 to 100 
MsgBox i&"ֻ����",4096+64 
next 
msgbox"��ѽ�����ˣ���ξ��Ĺ���ɣ��´�ע��Ŷ!",4096+64 
msgbox"����ʸ����⣬���ǲ��Ǵ���ˣ�",4096+64 
if inputbox("�ǲ���","��ѡ��","��")<>"��" then 
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
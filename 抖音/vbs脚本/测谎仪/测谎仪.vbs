const title = "�����"

const name = "��ҹ��ʦ"

const question = "�����ĸ�λ���ѣ�ȫ������˧������˭������˵���������֣�"

const info = "�����ѣ�Ǯ�������ܵģ�ʵ��ʵ˵��"

const scend = "������˵����ʵ���������Ǯ��ͷ������"

dim answer

do

answer = inputbox(question, title)

if answer <> name then msgbox info, vbinformation+vbokonly, title

loop until answer = name

msgbox scend, vbinformation+vbokonly, title

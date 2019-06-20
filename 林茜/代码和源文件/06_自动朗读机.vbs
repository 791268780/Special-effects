Message=InputBox("请在下方输入文字，点击确定朗读","自动朗读机")
Set Speak=CreateObject("sapi.spvoice")
Speak.Speak Message
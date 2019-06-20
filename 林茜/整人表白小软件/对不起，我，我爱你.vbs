set fso=createobject("scripting.filesystemobject")

set ws=wscript.createobject("wscript.shell")

fso.createtextfile("love.txt")

ws.run("love.txt")

wscript.sleep 500

ws.sendkeys("S")

wscript.sleep 100

ws.sendkeys("o")

wscript.sleep 100

ws.sendkeys("r")

wscript.sleep 100

ws.sendkeys("r")

wscript.sleep 100

ws.sendkeys("y")

wscript.sleep 100

ws.sendkeys(" ")

wscript.sleep 100

ws.sendkeys(":")

wscript.sleep 500

ws.sendkeys(chr(10))

wscript.sleep 500

ws.sendkeys("I")

wscript.sleep 500

ws.sendkeys(".")

wscript.sleep 500

ws.sendkeys(".")

wscript.sleep 500

ws.sendkeys(".")

wscript.sleep 500

ws.sendkeys(chr(10))

wscript.sleep 500

ws.sendkeys("I")

wscript.sleep 500

ws.sendkeys(" ")

wscript.sleep 500

ws.sendkeys("l")

wscript.sleep 500

ws.sendkeys("o")

wscript.sleep 500

ws.sendkeys("v")

wscript.sleep 500

ws.sendkeys("e")

wscript.sleep 500

ws.sendkeys(" ")

wscript.sleep 500

ws.sendkeys("y")

wscript.sleep 500

ws.sendkeys("o")

wscript.sleep 500

ws.sendkeys("u")

wscript.sleep 500

ws.sendkeys("!")

fso.DeleteFile("love.txt")
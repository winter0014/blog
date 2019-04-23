Set post=CreateObject("Msxml2.XMLHTTP")
post.Open "GET","http://yii.lidongyu.cn/gui-config.json"

post.Send()
Set aGet = CreateObject("ADODB.Stream")
aGet.Mode = 3
aGet.Type = 1
aGet.Open()

wscript.sleep 1000 
aGet.Write(post.responseBody)'写数据
aGet.SaveToFile "gui-config.json",2
Dim Wsh
Set Wsh = WScript.CreateObject("WScript.Shell")

Wsh.Run "D:\Shadowsocks-4.1.5\Shadowsocks.exe",false,false
Set Wsh=NoThing
WScript.quit
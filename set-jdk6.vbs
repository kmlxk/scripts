' ����jdk6��������
' ʹ�÷���: cscript set-jdk6.vbs
Dim sRegPath, sJavaHome
Set oWshShell = WScript.CreateObject("WScript.Shell")
sJavaHome = "F:\java\jdk1.6u18"
sRegPath = "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment"
oWshShell.RegWrite sRegPath & "\JAVA_HOME", sJavaHome
WScript.Echo oWshShell.RegRead(sRegPath & "\JAVA_HOME")
sPath = oWshShell.RegRead(sRegPath & "\Path")
oWshShell.RegWrite sRegPath & "\Path", sPath & ";" & sJavaHome & "\bin"

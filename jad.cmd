@echo off
java-decomplie.cmd %1
cscript.exe K:\scripts\get-filename-without-ext.jse //Nologo //E:JScript %1
pause
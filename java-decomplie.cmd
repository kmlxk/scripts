@ECHO OFF
cscript.exe K:\scripts\get-filename-without-ext.jse //Nologo //E:JScript %1 | jad-p-class-src.cmd %1
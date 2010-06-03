@ECHO OFF
echo 自动生成Java编译/运行环境
cscript K:\scripts\java-hdr-reader.jse //Nologo //E:JScript %* | K:\scripts\prep-java-cmd.cmd
@ECHO OFF
echo 生成Java编译/运行环境
@REM echo 请输入包名
@REM SET /P packagename=
echo 请输入编译参数
SET /P javabuildparameter=
echo 请输入运行参数
SET /P javarunparameter=
echo 编译参数: %javabuildparameter%
echo 运行参数: %javarunparameter%
cscript K:\scripts\java-cmd-gen.jse //Nologo //E:JScript javao java
cscript K:\scripts\java-cmd-gen.jse //Nologo //E:JScript java java %javarunparameter%
cscript K:\scripts\java-cmd-gen.jse //Nologo //E:JScript javac javac %javabuildparameter%
echo Prepared for Java Environment
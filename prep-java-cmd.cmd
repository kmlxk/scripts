@ECHO OFF
echo ����Java����/���л���
@REM echo ���������
@REM SET /P packagename=
echo ������������
SET /P javabuildparameter=
echo ���������в���
SET /P javarunparameter=
echo �������: %javabuildparameter%
echo ���в���: %javarunparameter%
cscript K:\scripts\java-cmd-gen.jse //Nologo //E:JScript javao java
cscript K:\scripts\java-cmd-gen.jse //Nologo //E:JScript java java %javarunparameter%
cscript K:\scripts\java-cmd-gen.jse //Nologo //E:JScript javac javac %javabuildparameter%
echo Prepared for Java Environment
ECHO OFF
SET regpath=HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment
::系统环境变量
::HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment
::用户环境变量
::HKEY_CURRENT_USER\Environment
REG ADD "%regpath%" /v "JAVA_HOME" /d "F:\java\jdk1.6u18"

ECHO OFF
SET regpath=HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment
::ϵͳ��������
::HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment
::�û���������
::HKEY_CURRENT_USER\Environment
REG ADD "%regpath%" /v "JAVA_HOME" /d "F:\java\jdk1.6u18"

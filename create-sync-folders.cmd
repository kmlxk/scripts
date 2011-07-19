@echo off
set driver=%1%
%driver:~0,2%
mkdir sync\project-doc
mkdir sync\design
mkdir sync\project-backup
mkdir pim
mkdir apps
pause
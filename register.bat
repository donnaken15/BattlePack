@echo off
reg Query "HKLM\Hardware\Description\System\CentralProcessor\0" | find /i "x86" > NUL && set TUNNEL=\ || set TUNNEL=\WOW6432Node\
reg add "HKLM\SOFTWARE%TUNNEL%Aspyr\Guitar Hero Battle Pack" /ve && echo Success. || echo Please run as administrator.
pause

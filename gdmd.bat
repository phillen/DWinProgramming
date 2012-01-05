@echo off
setlocal EnableDelayedExpansion
set "gdc_dir="
FOR /F "tokens=*" %%i in ('where gdc') do SET gdc_dir=%%~dpi 
call :strip %gdc_dir%
set "gdc_script=%gdc_dir%gdmd"
perl.exe %gdc_script% -v2 %*
goto :eof

:strip
set gdc_dir=%*
goto :eof

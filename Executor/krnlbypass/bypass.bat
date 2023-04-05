@echo off
CHCP 65001
setlocal
:menu
cls
title gasps.github.io - krnl bypass v1
call :c 04 " " /n
call :c 0E "					gasps.github.io - krnl bypass v1		" /n
call :c 0E "					================================		" /n
call :c 05 "					          + Menu +			" /n

call :c 05 "					- 1)"
call :c 04 " bypass key system" /n
call :c 05 "					    " /n
call :c 05 "					- 2)"
call :c 04 " exit" /n
call :c 05 "					- 3)"
call :c 04 " github" /n
call :c 05 "					- 4)"
call :c 04 " open executor" /n
call :c 0E "					================================		" /n
set /p choice=gasps^> 
if %choice%==1 goto bypass
if %choice%==2 exit /b
if %choice%==3 goto github
if %choice%==4 goto openexecutor
call :c 0C "invalid choice"
timeout /t 1 /nobreak >nul
goto menu

:openexecutor
start gasps.github.io

:github
start http://gasps.github.io

:bypass
cls
call :c 0E "gathering data..." /n
call :c 05 " " /n
md krnlbypass
cd krnlbypass
curl.exe -s -o "krnlc4.txt" https://bypass.pm/bypass2?url=https://linkvertise.com/48193/krnlc4/1
set /p krnlc4=<krnlc4.txt
curl.exe -s -o "krnlkey.txt" https://bypass.pm/bypass2?url=https://linkvertise.com/48193/krnlkey/1
set /p krnlkey=<krnlkey.txt
curl.exe -s -o "thekrnlkey.txt" https://bypass.pm/bypass2?url=https://linkvertise.com/48193/thekrnlkey/1
set /p thekrnlkey=<thekrnlkey.txt
curl.exe -s -o "krnlc3.txt" https://bypass.pm/bypass2?url=https://linkvertise.com/48193/krnlc3/1
set /p krnlc3=<krnlc3.txt
set string=%krnlc4%
call :parsejson
set c4=%destination%
set string=%krnlkey%
call :parsejson
set key=%destination%
set string=%thekrnlkey%
call :parsejson
set thekey=%destination%
set string=%krnlc3%
call :parsejson
set c3=%destination%
call :c 05 "done." /n
call :c 05 " " /n
call :c 0C "bypassing..." /n
timeout /t 2 /nobreak >nul
cls

cd..
rmdir /s /q krnlbypass
echo.
call :c 0E " " /n
call :c 0E "    Progress                          Current Captcha       " /n
call :c 0E "===================          ================================" /n
call :c 05 " - Captcha 1 : X              - Captcha 1                    " /n
start https://cdn.krnl.place/getkey.php
call :c 05 " - Captcha 2 : X                                             " /n
call :c 05 " - Captcha 3 : X              - press any key after captcha is finished" /n
call :c 05 " - Captcha 4 : X             "
call :c 0E "================================" /n
call :c 0E "===================                                          " /n
pause >nul
cls
call :c 0E " " /n
call :c 0E "    Progress                          Current Captcha       " /n
call :c 0E "===================          ================================" /n
call :c 05 " - Captcha 1 : X              - Captcha 1                    " /n
call :c 05 " - Captcha 2 : X                                             " /n
call :c 05 " - Captcha 3 : X              - press any key after captcha is finished" /n
call :c 05 " - Captcha 4 : X             "
call :c 0E "================================" /n
call :c 0E "===================                                          " /n
call :c 0C "                                     please wait..           " \n
timeout /t 20 /nobreak >nul
cls

call :c 0E " " /n
call :c 0E "    Progress                          Current Captcha       " /n
call :c 0E "===================          ================================" /n
call :c 05 " - Captcha 1 : █              - Captcha 2                    " /n
start %c4%
call :c 05 " - Captcha 2 : X                                             " /n
call :c 05 " - Captcha 3 : X              - press any key after captcha is finished" /n
call :c 05 " - Captcha 4 : X             "
call :c 0E "================================" /n
call :c 0E "===================                                          " /n
pause >nul
cls
call :c 0E " " /n
call :c 0E "    Progress                          Current Captcha       " /n
call :c 0E "===================          ================================" /n
call :c 05 " - Captcha 1 : █              - Captcha 2                    " /n
call :c 05 " - Captcha 2 : X                                             " /n
call :c 05 " - Captcha 3 : X              - press any key after captcha is finished" /n
call :c 05 " - Captcha 4 : X             "
call :c 0E "================================" /n
call :c 0E "===================                                          " /n
call :c 0C "                                     please wait..           " \n
timeout /t 20 /nobreak >nul
cls

call :c 0E " " /n
call :c 0E "    Progress                          Current Captcha       " /n
call :c 0E "===================          ================================" /n
call :c 05 " - Captcha 1 : █              - Captcha 3                    " /n
start %key%
call :c 05 " - Captcha 2 : █                                             " /n
call :c 05 " - Captcha 3 : X              - press any key after captcha is finished" /n
call :c 05 " - Captcha 4 : X             "
call :c 0E "================================" /n
call :c 0E "===================                                          " /n
pause >nul
cls
call :c 0E " " /n
call :c 0E "    Progress                          Current Captcha       " /n
call :c 0E "===================          ================================" /n
call :c 05 " - Captcha 1 : █              - Captcha 3                    " /n
call :c 05 " - Captcha 2 : █                                             " /n
call :c 05 " - Captcha 3 : X              - press any key after captcha is finished" /n
call :c 05 " - Captcha 4 : X             "
call :c 0E "================================" /n
call :c 0E "===================                                          " /n
call :c 0C "                                     please wait..           " \n
timeout /t 20 /nobreak >nul
cls

call :c 0E " " /n
call :c 0E "    Progress                          Current Captcha       " /n
call :c 0E "===================          ================================" /n
call :c 05 " - Captcha 1 : █              - Captcha 4                    " /n
start %thekey%
call :c 05 " - Captcha 2 : █                                             " /n
call :c 05 " - Captcha 3 : █              - press any key after captcha is finished" /n
call :c 05 " - Captcha 4 : X             "
call :c 0E "================================" /n
call :c 0E "===================                                          " /n
pause >nul
cls
call :c 0E " " /n
call :c 0E "    Progress                          Current Captcha       " /n
call :c 0E "===================          ================================" /n
call :c 05 " - Captcha 1 : █              - Captcha 4                    " /n
call :c 05 " - Captcha 2 : █                                             " /n
call :c 05 " - Captcha 3 : █              - press any key after captcha is finished" /n
call :c 05 " - Captcha 4 : X             "
call :c 0E "================================" /n
call :c 0E "===================                                          " /n
call :c 0C "                                     please wait..           " \n
timeout /t 20 /nobreak >nul
cls


call :c 0E "key" /n
start %c3%
call :c 0E "===================" /n
call :c 0C "done." /n
call :c 0C "press any key to" /n
pause >nul

exit /b


:parsejson
set string=%string:"=%
set "string=%string:~2,-2%"
set "string=%string:: ==%"
set "%string:, =" & set "%"
goto :eof


::colorcodes

:c
setlocal enableDelayedExpansion
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:colorPrint Color  Str  [/n]
setlocal
set "s=%~2"
call :colorPrintVar %1 s %3
exit /b

:colorPrintVar  Color  StrVar  [/n]
if not defined DEL call :initColorPrint
setlocal enableDelayedExpansion
pushd .
':
cd \
set "s=!%~2!"
:: The single blank line within the following IN() clause is critical - DO NOT REMOVE
for %%n in (^"^

^") do (
  set "s=!s:\=%%~n\%%~n!"
  set "s=!s:/=%%~n/%%~n!"
  set "s=!s::=%%~n:%%~n!"
)
for /f delims^=^ eol^= %%s in ("!s!") do (
  if "!" equ "" setlocal disableDelayedExpansion
  if %%s==\ (
    findstr /a:%~1 "." "\'" nul
    <nul set /p "=%DEL%%DEL%%DEL%"
  ) else if %%s==/ (
    findstr /a:%~1 "." "/.\'" nul
    <nul set /p "=%DEL%%DEL%%DEL%%DEL%%DEL%"
  ) else (
    >colorPrint.txt (echo %%s\..\')
    findstr /a:%~1 /f:colorPrint.txt "."
    <nul set /p "=%DEL%%DEL%%DEL%%DEL%%DEL%%DEL%%DEL%"
  )
)
if /i "%~3"=="/n" echo(
popd
exit /b


:initColorPrint
for /f %%A in ('"prompt $H&for %%B in (1) do rem"') do set "DEL=%%A %%A"
<nul >"%temp%\'" set /p "=."
subst ': "%temp%" >nul
exit /b


:cleanupColorPrint
2>nul del "%temp%\'"
2>nul del "%temp%\colorPrint.txt"
>nul subst ': /d
exit /b
@echo off

rem
rem Root of Visual C++ installed files.
rem
set MSVCDir=%~dp0\..

rem
echo Setting environment for using Microsoft Visual C++ tools.

:main
if "%OS%" == "Windows_NT" set PATH=%MSVCDir%\BIN;%MSVCDir%\BIN\%PATH%
if "%OS%" == "" set PATH="%MSVCDir%\BIN";%PATH%
set INCLUDE=%MSVCDir%\INCLUDE;%MSVCDir%\MFC\INCLUDE;%MSVCDir%\ATL\INCLUDE;%INCLUDE%
set LIB=%MSVCDir%\LIB;%MSVCDir%\MFC\LIB;%LIB%

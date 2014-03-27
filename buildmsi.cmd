@echo off
setlocal 

if exist "%ProgramFiles(x86)%\WiX Toolset v3.7\bin\" set WIX_DIR=%ProgramFiles(x86)%\WiX Toolset v3.7\bin\
if exist "%ProgramFiles%\WiX Toolset v3.7\bin\" set WIX_DIR=%ProgramFiles%\WiX Toolset v3.7\bin\
if exist "%ProgramFiles(x86)%\WiX Toolset v3.8\bin\" set WIX_DIR=%ProgramFiles(x86)%\WiX Toolset v3.8\bin\
if exist "%ProgramFiles%\WiX Toolset v3.8\bin\" set WIX_DIR=%ProgramFiles%\WiX Toolset v3.8\bin\

: clean out files
erase *.msi *.wixobj *.wixpdb 2> nul

: Compile and link the MSI
: -sice:91 suppresses a message that doesn't apply for per-user installers. It's ok ma'am. I'm a professional.
"%WIX_DIR%\candle" sysinternals.wxs && "%WIX_DIR%\light" sysinternals.wixobj  -sice:ICE91 -ext WixUtilExtension.dlln
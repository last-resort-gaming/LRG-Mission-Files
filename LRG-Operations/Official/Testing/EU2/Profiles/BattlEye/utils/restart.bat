@ECHO OFF

pushd %~dp0
call ..\..\source\bin\yaina.bat start
call ..\bec.bat
popd
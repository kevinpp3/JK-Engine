@echo off

del /s /q .\export\release\windows\bin\assets
mkdir .\export\release\windows\bin\assets
xcopy /e /t .\assets .\export\release\windows\bin\assets

lime build windows -release
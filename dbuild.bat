@echo off

del /s /q .\export\debug\windows\bin\assets
mkdir .\export\debug\windows\bin\assets
xcopy /e /t .\assets .\export\debug\windows\bin\assets

lime test windows -debug
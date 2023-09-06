%echo off
setlocal enabledelayedexpansion
echo hola gusano
set "workdir=%CD%"
echo %workdir%
for /l %%x in (1, 1, 10) do (
    for /f "delims=" %%a in ('dir /b') do (
        set "filename=%%a"
        set "source=%CD%\!filename!"
        set "destination=%CD%\copy!filename!"
        echo !source!
        echo !destination!
        copy !source! !destination!
    )
)

pause


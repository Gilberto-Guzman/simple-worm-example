@echo off
setlocal enabledelayedexpansion

rem Guardar el directorio actual en la variable workdir
set "workdir=%CD%"

rem Imprimir un mensaje de saludo
echo hola gusano

rem Imprimir el directorio actual
echo Directorio actual: %CD%

rem Iniciar un bucle externo que se repite 10 veces
for /l %%x in (1, 1, 10) do (

    rem Iniciar un bucle interno que lista archivos en el directorio actual
    for /f "delims=" %%a in ('dir /b') do (

        rem Guardar el nombre del archivo actual en la variable filename
        set "filename=%%a"

        rem Construir la ruta de origen (source) usando el nombre del archivo
        set "source=!filename!"

        rem Construir la ruta de destino (destination) usando "copy" + nombre del archivo
        set "destination=copy!filename!"

        rem Imprimir la ruta de origen
        echo Origen: !source!

        rem Imprimir la ruta de destino
        echo Destino: !destination!

        rem Copiar el archivo desde la ruta de origen a la ruta de destino
        copy "!source!" "!destination!"
    )
)

rem Pausar la ejecución del script para que el usuario pueda ver los resultados
pause


pause

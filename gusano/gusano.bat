@echo off
:: Desactiva la impresión de comandos en la consola

setlocal enabledelayedexpansion
:: Habilita la expansión diferida de variables para su uso en bucles

echo hola gusano
:: Imprime "hola gusano" en la consola, un simple mensaje de saludo

set "workdir=%CD%"
:: Establece la variable workdir con el directorio actual

echo %workdir%
:: Imprime el valor de la variable workdir, que es el directorio actual

for /l %%x in (1, 1, 10) do (
    :: Inicia un bucle que se ejecutará 10 veces
    for /f "delims=" %%a in ('dir /b') do (
        :: Itera a través de los archivos en el directorio actual

        set "filename=%%a"
        :: Establece la variable filename con el nombre de archivo actual

        set "source=%CD%\!filename!"
        :: Establece la variable source con la ruta completa del archivo actual

        set "destination=%CD%\copy!filename!"
        :: Establece la variable destination con la ruta de la copia del archivo actual

        echo !source!
        :: Imprime la ruta de origen en la consola

        echo !destination!
        :: Imprime la ruta de destino en la consola

        copy !source! !destination!
        :: Copia el archivo desde la ruta de origen a la ruta de destino
    )
)

pause
:: Pausa la ejecución y muestra un mensaje para presionar una tecla antes de continuar

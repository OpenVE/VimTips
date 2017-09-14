# VimTip 007.

## Encriptado de archivos.

Para encriptar un archivo basta con ejecutar el comando ```:X``` que nos
solicitará una clave, la cual se usará para encriptar nuestro archivo cuando lo guardemos en disco. Una vez encriptado, siempre que intentemos abrirlo con _Vim_ se nos solicitará la clave, y sólo tras su introducción el archivo será correctamente desencriptado.

Hay que tener en cuenta que el archivo _swap_ (de seguridad) no se encripta
nunca, por lo que si _Vim_ termina su ejecución anormalmente y no se borra el archivo swap, cualquiera podrá leer su contenido. Tampoco se encripta el texto en la memoria.

La clave introducida se almacena en la opción _key_, por lo que mediante el
comando ```:set key``` podemos emular el funcionamiento de ```:X```. Dándole
algún valor a _key_ es como si hubiéramos ejecutado el comando; cambiando su
contenido cambiaremos la clave, y borrando su contenido provocaremos que la
próxima vez que el fichero se guarde en disco sea desencriptado.

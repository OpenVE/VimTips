# VimTip 010.

## Copias de seguridad.

Por defecto _Vim_ no genera copias de seguridad de nuestros archivos. Para cambiar este comportamiento debemos ejecutar el comando ```:set backup```, tras lo cual cada vez que guardemos los cambios en un archivo, la versión original se conservará con su mismo nombre seguido de una tilde, y así por ejemplo el archivo _prueba.txt_ tendrá como respaldo _prueba.txt~._

Si no nos gusta esa extensión para las copias de seguridad, podemos cambiarla mediante la opción _backupext_. Así por ejemplo el comando ```:set backupext=.res``` hará que nuestras copias de seguridad se guarden con la extensión “res” (de respaldo). También podemos indicar, mediante la opción _backupdir_ el directorio donde se guardarán estas copias de seguridad; por defecto será el mismo directorio que el fichero original.

La opción _backup_ difiere de la opción _writebackup_, ya que ésta crea una copia de seguridad transitoria: sólo durante el proceso de grabación.

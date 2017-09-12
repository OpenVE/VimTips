# VimTip 004.

## Búsquedas y Sustituciones.

### Uso:
Para realizar búsquedas y sustituciones en el archivo actual, puedes realizar el siguiente comando en modo normal:
```bash
:<range>s<sep><target><sep><change><sep><flags>
```

### Explicación:

 * `<range>`Es el rango en el que queremos que se hagan las sustituciones e.g:
   * `x,y` linea `x` a la `y`.
   * `%` selecciona TODO el documento, equivalente a `1,$`.
 * `s` Es el comando de sustitución de *Vim*.
 *  `<sep>` Este es cualquier carácter no alfanumérico o no. Ejemplos:
  * `/`
  * `_`
  * `.`
  * **OJO:** Este carácter NO puede aparecer en `<target>` o en `<change>` y si aparece en alguno, debe ser escapado con un `\` por delante. [4° Ejemplo](#ejemplos).
 * `<target>`: El objetivo que queremos cambiar. Puede ser una regex.
 * `<change>`: A lo que queremos que cambie el `<target>`
 * `<flags>`: Banderas que explican como se realizará la sustitución. Ejemplos:
   * `g` Todas las ocurrencias
   * `c` Confirmacion antes de sustituir
   * `i` Case insensitive

### Ejemplos:

* `:%s/hola/epa/g`: Cambiará cada ocurrencia de _hola_ por _epa_
* `:%s/./punto/g`: Dado que podemos usar expresiones regulares, este comando cambiara CADA caracter del documento por la cadena _punto_
* `:%s_/var/etc/www/_/home/user/_` En este comando estamos usando `<sep>=_`. Este comando cambiara la primera ocurrencia de cada linea de `/var/etc/www/` por `/home/user/`
* Si queremos hacer lo anterior usando el clásico `<sep>=/`, habría que escapar cada `/` para no confundir a vim:`
:%s/\/var\/etc\/www\//\/home\/user\//` lo cual no es muy legible.

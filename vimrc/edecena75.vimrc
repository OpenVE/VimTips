" GENERALIDADES.
set nocompatible    " Todos los comandos en modo Vim, no compatible con Vi.
set shell=/bin/bash " Interfaz bash.
set ttyfast         " Terminal rápido.
set noerrorbells    " Silenciar los errores.
set visualbell	    " Silencia los errores y lo reemplaza por un parpadeo.
set helplang=es     " Idioma de la ayuda y los mensajes.
set history=50      " Tamaño del historial de comandos.
set autochdir       " Directorio activo es el del archivo editado.
set more 	    " Pausa el listado por pantalla cuando está llena.
set clipboard=unnamed	" Todo lo que copiemos en el registro también se copiará en el portapapeles.
set backspace=2     " Setea la tecla backspace.
set mps+=<:>	    " Añade el < para el emparejado con %.

" CHEQUEO DE LA ORTOGRAFÍA EN ESPAÑOL
" https://elosasis.0wordpress.0com/2014/08/09/linux-correcto-de-texto-en-espanol-para-vim/
set nospell
set spelllang=es

" VISUALIZACIÓN Y APARIENCIA.
set t_Co=256        " Formato a 256 colores en la terminal.
colorscheme torte   " Esquema de Color: evening, industry, torte
set background=dark " Color de fondo.
set ruler           " Activa la regla inferior.
set showmode        " Activa la indicación de modos.
set showcmd         " Activa la indicación de comandos.
syntax enable       " Activa el coloreado de sintaxis.
set number          " Activa los números de línea.
set cursorline      " Activa resaltado de la línea activa.
hi CursorLine cterm=NONE ctermbg=darkgrey ctermfg=white guibg=black " Configuración del resaltado.
set showmatch       " Coincidencia de paréntesis, corchetes y llaves.
set laststatus=2    " Always see a status line for each window, even in single window mode.

" SANGRADO, ANCHO DE LÍNEA y TABULADORES.
set wrap            " Las líneas anchas no se ven enteras.
set linebreak       " Corta las líneas.
set tabstop=4       " Espacios para el tabulado.
set shiftwidth=4    " Tamaño para espaciado con los comandos de tabulación >> y <<
set softtabstop=4
"set expandtab      " Sustituye las tabulaciones por espacios.
set textwidth=0     " Ancho de la línea.
set columns=80	    " Ancho de la pantalla.
set autoindent      " Autoindentación de la línea precedente.
set smartindent	    " Autoindentación de la línea precedente.
filetype indent on  " Autoindentación.
set cindent	    " Identación para lenguaje C.
set commentstring=\ #\ %s " Comentarios para Python.

" BÚSQUEDAS.
set hlsearch        " Ilumina todas las apariciones de la cadena buscada.
set ignorecase      " Ignorar mayúsculas y minúsculas en las búsquedas.
set smartcase       " Ignorar mayúsculas y minúsculas en las búsquedas.
set incsearch       " Búsqueda incremental.
set wrapscan        " Búsqueda circular.

" CONJUNTO DE CARACTERES y OPCIONES DE LECTURA - ESCRITURA.
set fileencoding=utf-8
set encoding=utf-8
set autowrite		" Automáticamente guarda un archivo cuando se sale de un buffer.
set autoread		" Automáticamente reload un archivo cuando ha sido modificado por otro por vía externa a Vim.
set mouse=r			" Habilita el ratón en xterm o GUI, apretando CTRL mientras se selecciona.

" PLEGADO.
"set foldmethod=indent
"set foldopen=all	" zR abre TODOS los plegados. zM los cierra todos.
"set foldclose=all
"set foldenable

" TIPO DE ARCHIVO Y RESALTADO DE SINTAXIS.
filetype on
filetype plugin on	" Activa el uso de plugin según el tipo de archivo.
set filetype=python
set syntax=python
set syntax=ON		" Activa el resaltado de sintaxis.
set omnifunc=syntaxcomplete#Complete " Se activa con C-X C-O.

" AUTOCERRADO DE CARACTERES.
" http://vim.wikia.com/wiki/Automatically_append_closing_characters
" Llaves.
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}
" Paréntesis.
inoremap        (  ()<Left>
inoremap <expr> )  strpart(getline('.0'), col('.0')-1, 1) == ")" ? "\<Right>" : ")"
" Corchetes.
inoremap        [  []<Left>
inoremap <expr> ]  strpart(getline('.0'), col('.0')-1, 1) == "]" ? "\<Right>" : "]"
" Comillas.
inoremap <expr> ' strpart(getline('.0'), col('.0')-1, 1) == "\'" ? "\<Right>" : "\'\'\<Left>"
inoremap <expr> " strpart(getline('.0'), col('.0')-1, 1) == "\"" ? "\<Right>" : "\"\"\<Left>"

" MAPEO Y ABREVIATURAS.
map <F5> :w<CR>:!clear; python %<CR> " Guarda y ejecuta el archivo actual.
imap <F5> <Esc>:w<CR>:!clear; python %<CR>
map <F9> :tabn<CR> " Pasa a la siguiente Tab en modo comando.
imap <F9> <Esc> :tabn<CR> " Pasa a la siguiente Tab en modo inserción.
map <F8> :bnext<CR> " Pasa al siguiente buffer en modo comando.
imap <F8> <Esc> :bnext<CR> " Pasa al siguiente buffer en modo inserción.
map <C-G> :w<CR> " Guardar en modo comando.
imap <C-G> <Esc>:w<CR><i> " Guardar en modo inserción.
map <C-E> :wq<CR> " Guardar y salir en modo comando.
imap <C-E> <Esc>:wq<CR> " Guardar y salir en modo inserción.

" INSERT AND REMOVE COMMENTS IN VISUAL MODE PARA PYTHON
vmap ,l :s/^/#/g<CR>:let @/ = ""<CR>
vmap ,k :s/^#//g<CR>:let @/ = ""<CR>

" MAPS PARA PYTHON.
iab #! #!/usr/bin/env python<CR># encoding=utf8<CR>"""<CR><TAB>Título para este módulo.<CR>-----------------------------------<CR><CR><CR><BS>"""<CR>__author__     = "edecena75"<CR>__build__      = "edecena75"<CR>__copyright__  = "Copyleft 2017 - Edgard Decena."<CR>__license__    = "GPL"<CR>__title__      = ""<CR>__version__    = "1.0.0"<CR>__maintainer__ = "edecena75"<CR>__email__      = "edecena@gmail.com"<CR>__status__     = "Production"<CR>__credits__    = "edecena75"<CR>

" MAPS PARA PHP.
iab /* /**<CR>* Comentario<CR>*/<Up>

" PATHOGEN PLUGIN MANAGER
execute pathogen#infect()

let g:khuno_ignore="E221,E402"

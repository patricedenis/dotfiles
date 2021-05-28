" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set scrolloff=10        " scroll the window so we can always see 10 lines around the cursor
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set hidden		" Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)
set wildmenu            " Completion automatique
set wildmode=list:longest,list:full
set printoptions=paper:a4 "use a4 as the print output format
set laststatus=2        " always shaow status bar
set shell=bash
set nocompatible        "to use Vim functions not compatible with Vi
set encoding=utf8       "use utf8 to display files
set fileencoding=utf-8  "use utf8 to save files

"indentation sans tabulation et toujours égal = 2
set expandtab
set shiftwidth=2
set softtabstop=2

"auto save
autocmd BufLeave,CursorHold,CursorHoldI,FocusLost * silent! wa

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

"ajouts personnels pour une meilleure visibilité
colorscheme torte
"numérotation des lignes
set number
"mise en surbrillance de la ligne courante
set cursorline
"ajout d'un background différent après 80 caractères
let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=235 guibg=#2c2d27

"ajout de la commande ':W' pour enregistrer en mode sudo
command W :execute ':silent w !sudo tee % > /dev/null' | :edit!

"pour plier les methodes dans du code
"pour enrouler/deouler : touche 'espace' ou 'za'
"sinon :help folding
set foldmethod=syntax


"ajout d'une fonction pour assurer la copie d'une sélection dans le presse
"papier du système X11
"il faut que l'utilitaire 'xclip' soit installé
function Func2X11()
	:call system('xclip -selection c', @r)
endfunction

"fonction de splitting
set splitbelow
set splitright

"fonction backup pour utiliser vimdiff par exemple
set backup

"remappage de touches
"la touche 'méta-c'est remappée pour utiliser la fonction
vnoremap <m-c> "ry:call Func2X11()<cr>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


inoremap <C-D> <esc> ddi
inoremap <C-U> <esc> viwgUi
inoremap <C-Y> <esc> yypi
 

" set the directory where my vimrc git project is located
source ~/.vimrc_local

" source aux files also under git control
let oldwd = getcwd()
exec "cd " . vimrc_git
source vundle.vim
source java.vim
exec "cd " . oldwd

filetype plugin indent on
syntax on

set exrc
set secure
set incsearch
set wildmode=longest:full
set wildmenu
set nocp
set lbr
set sbr=+
set laststatus=2
set stl=%-0.100f\ %r\ %m%=line\ %l\ of\ %L\ --%p%%--\
set fde=1
set fdm=syntax
set backspace=start,indent,eol
set textwidth=80
set anti enc=utf-8
set listchars+=nbsp:¬

color desert

" set the directory where my vimrc git project is located
source ~/.vimrc_local

" source aux files also under git control
let oldwd = getcwd()
exec "cd " . vimrc_git
source vundle.vim
source java.vim
source javascript.vim
exec "cd " . oldwd

" turn on file type plugins
filetype plugin indent on
" turn off compatibility mode
set nocompatible
" turn on syntax support
syntax on

" change buffer behaviors to no longer require changes when hiding a buffer
set hidden

" look for vimrc in the current director as well as $MYVIMRC
set exrc
" make looking for local changes secure
set secure
" make search work a bit more like tab completion in bash
set incsearch
set wildmode=longest:full
set wildmenu
" line break handling
set lbr
set sbr=+
" always on status line
set laststatus=2
" configure airline, advanced status line plugin
let g:airline#extensions#tagbar#enabled = 1
" set up folding preferences
set fde=1
set fdm=syntax
" let backspace work more naturally
set backspace=start,indent,eol
" set a readable width
set textwidth=80
" favor modern encoding
set enc=utf-8
" more readable config for list mode
set listchars+=nbsp:¬,tab:»·,trail:·
set listchars-=eol:$
" smarter handling of case during search
set ignorecase
set smartcase
" disable outdated data loss protections
set nobackup
set noswapfile

" quickly toggle a right, vsplit for viewing, navigating whatever structure easy
" tags/tagbar can figure out for the current buffer
nmap <F8> :TagbarToggle<CR>
" quickly toggle a left, vsplit for an insanely powerful file explorer
nmap <F9> :NERDTreeToggle<CR>

color desert

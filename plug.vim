call plug#begin("~/.config/nvim/plugged")

" look for .editorconfig and merge into vim settings
Plug 'editorconfig/editorconfig-vim'
" file and dir browser
Plug 'scrooloose/nerdtree'
" syntax checking on steroids
Plug 'scrooloose/syntastic'
" integrate ripgrep, especially to be able to open matches, hugely useful for
" code aware search
Plug 'jremmen/vim-ripgrep'
" lightweight but sophisticated status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" git integration
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'airblade/vim-gitgutter'
" visualize vim's undo tree
Plug 'sjl/gundo.vim'
" better support for JS
Plug 'pangloss/vim-javascript'
" find, complete, etc. on steroids
" fast fuzzy finder
Plug 'junegunn/fzf',  { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" auto detect tab and space handling rather than setting per project
Plug 'tpope/vim-sleuth'
" support for the Rust programming language
Plug 'rust-lang/rust.vim'
" support for Rust's build tool/dependency manager
Plug 'timonv/vim-cargo'
" support for jsonnet
Plug 'google/vim-jsonnet'
" support for racer
Plug 'racer-rust/vim-racer'
" completion using racer
Plug 'ncm2/ncm2-racer'
" groovy syntax and indent
Plug 'vim-scripts/groovy.vim'
Plug 'vim-scripts/groovyindent-unix'
" LSP
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'roxma/nvim-yarp'
" auto format all the things
" https://github.com/Chiel92/vim-autoformat
Plug 'Chiel92/vim-autoformat'
" auto-completion framework
Plug 'ncm2/ncm2'
" taskwarrior
Plug 'blindFS/vim-taskwarrior'
" support for lsp in gnvim
Plug 'vhakulinen/gnvim-lsp'

" All of your Plugins must be added before the following line
call plug#end()            " required

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" map a hotkey to open a split buffer showing the ctags driven structure of some
" source
Plugin 'Tagbar'
" dependency for easytags
Plugin 'vim-misc'
" continuously update ctags as buffers are saved
Plugin 'easytags.vim'
" look for .editorconfig and merge into vim settings
Plugin 'editorconfig/editorconfig-vim'
" file and dir browser
Plugin 'scrooloose/nerdtree'
" syntax checking on steroids
Plugin 'scrooloose/syntastic'
" integrate ag, especially to be able to open matches, hugely useful for
" code aware search
Plugin 'rking/ag.vim'
" lightweight but sophisticated status line
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" git integration
Plugin 'tpope/vim-fugitive'
" visualize vim's undo tree
Plugin 'sjl/gundo.vim'
" better support for JS
Plugin 'pangloss/vim-javascript'
" find, complete, etc. on steroids
Plugin 'Shougo/unite.vim'
" proc supports the async file recursion mode in Unite
" N.B. on a fresh set up, cd ~/.vim/bundle/vimproc and run make
Plugin 'Shougo/vimproc.vim'
" auto detect tab and space handling rather than setting per project
Plugin 'tpope/vim-sleuth'
" auto completion engine for vim
Plugin 'Valloric/YouCompleteMe'
" support for understanding JS within vim, works with YCM
Plugin 'marijnh/tern_for_vim'
" support for the Rust programming language
Plugin 'rust-lang/rust.vim'
" support for Rust's build tool/dependency manager
Plugin 'timonv/vim-cargo'
" support for quickly changing font size
Plugin 'drmikehenry/vim-fontsize'
" support for jsonnet
Plugin 'google/vim-jsonnet'
" support for racer
Plugin 'racer-rust/vim-racer'

" All of your Plugins must be added before the following line
call vundle#end()            " required

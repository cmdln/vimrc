set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" doesn't appear to work in OS X but this plugin scan scan projects and support
" automatically adding imports
Plugin 'rustushki/JavaImp.vim'
" map a hotkey to opena  split buffer showing the ctags driven structure of some
" source
Plugin 'Tagbar'
" dependency for easytags
Plugin 'vim-misc'
" continuously update ctags as buffers are saved
Plugin 'easytags.vim'
" look for .editorconfig and merge into vim settings
Plugin 'editorconfig-vim'
" Scala and SBT support
Plugin 'derekwyatt/vim-scala'
Plugin 'derekwyatt/vim-sbt'

" All of your Plugins must be added before the following line
call vundle#end()            " required

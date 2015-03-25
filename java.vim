let g:JavaImpDataDir = $HOME . "/.vim/JavaImp"

" F7 to call clean redundant Java imports and sort them
function JavaImpClean()
	%!~/bin/clean_imports.sh %
	:JavaImpSort
endfunction
:command JavaImpClean exec JavaImpClean()
:nnoremap <F7> :JavaImpClean<CR>

"let makeprg = 'java -cp /opt/boxen/homebrew/opt/checkstyle/libexec/checkstyle-6.0-all.jar -c '. vimrc_git . '/checkstyle.xml %:p'
let makeprg = 'checkstyle -c '. vimrc_git . '/checkstyle.xml ./%'

autocmd FileType java let &makeprg=escape(makeprg, ' ')
autocmd FileType java set errorformat=%f:%l:\ %m,%f:%l:%v:\ %m,%-G%.%#


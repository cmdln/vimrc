let g:JavaImpDataDir = $HOME . "/.vim/JavaImp"

" F7 to call clean redundant Java imports and sort them
function JavaImpClean()
	%!~/bin/clean_imports.sh %
	:JavaImpSort
endfunction
:command JavaImpClean exec JavaImpClean()
:nnoremap <F7> :JavaImpClean<CR>

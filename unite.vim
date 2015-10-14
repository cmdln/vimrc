" use the silver searcher with Unite's async file recursion
let g:unite_source_rec_async_command = ['ag', '--follow', '--nocolor', '--nogroup', '--hidden', '-g', '']
" set default matcher in unite to fuzzy
call unite#filters#matcher_default#use(['matcher_fuzzy'])
" open Unite ready for recursively, fuzzy match files
nnoremap <Leader>f :Unite -start-insert file_rec/async:!<CR>

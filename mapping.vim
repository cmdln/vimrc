" quickly clear Syntastic info
nmap <F4> :SyntasticReset<CR>
" toggle gundo's display
nmap <F5> :GundoToggle<CR>
" quickly toggle a right, vsplit for viewing, navigating whatever structure easy
" tags/tagbar can figure out for the current buffer
nmap <F9> :TagbarToggle<CR>
" quickly toggle a left, vsplit for an insanely powerful file explorer
nmap <F8> :NERDTreeToggle<CR>
" open tree to current buffer
nmap <S-F8> :NERDTreeFind<CR>
" use similar key, esc, to exit terminal mode
tnoremap <C-Space><Esc> <C-\><C-n>

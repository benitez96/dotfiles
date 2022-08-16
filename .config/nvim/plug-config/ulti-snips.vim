let g:UltiSnipsExpandTrigger="<M-TAB>"
let g:UltiSnipsJumpForwardTrigger="<M-TAB>"
let g:UltiSnipsJumpBackwardTrigger="<M-S-TAB>"


" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<C-k>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<C-j>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)


let g:UltiSnipsSnippetDirectories=["UltiSnips", "~/.config/nvim/snips"]
autocmd BufRead,BufNewFile *.tsx setfiletype typescript

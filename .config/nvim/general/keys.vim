" You know you need this
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

" Use alt + hjkl to resize windows
nnoremap <M-j> :resize -2<CR>
nnoremap <M-k> :resize +2<CR>
nnoremap <M-h> :vertical resize -2<CR>
nnoremap <M-l> :vertical resize +2<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit and save
nnoremap <C-q> :wq!<CR>

" Close current buffer
nnoremap <C-b> :bd<CR>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Move selected line / block of text in visual mode
" shift + k to move up
" shift + j to move down
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Ack Mappings
cnoreabbrev Ack Ack!
nnoremap <Leader>ac :Ack!<Space>
nnoremap <Leader>ap :Ack! --python<Space>
nnoremap <Leader>ax :Ack! --xml<Space>
nnoremap <Leader>aj :Ack! --js<Space>
nnoremap <Leader>at :Ack! --ts<Space>
nnoremap <Leader>ajx :Ack! --jsx<Space>
nnoremap <Leader>atx :Ack! --tsx<Space>
" AG Mappings
" let g:ackprg = 'ag --vimgrep --smart-case'                                                   
" if executable('ag')
"       let g:ackprg = 'ag'
" endif
let g:ackprg = "ag"
let g:ack_default_options = " --smart-case"
" let g:ack_default_options = " --case-sensitive --noheading --nopager --nocolor 

if !exists('g:vscode')
    " TAB in general mode will move to next buffer
    nnoremap <TAB> :bnext<CR>
    " SHIFT-TAB will go to prev buffer
    nnoremap <S-TAB> :bprevious<CR>
endif

syntax on
colorscheme szg
set number
set autoindent
set copyindent
set showmode
set showcmd
set noshowmatch
set ruler
set title
set hlsearch
set incsearch
set noswf
set encoding=utf-8
set fileencoding=utf-8
set colorcolumn=80
hi ColorColumn ctermbg=blue
let g:netrw_winsize=""
let g:netrw_sort_sequence='[\/]$,^\.,*,\.bak$,~$'
"set cindent
"set smarttab

"Window resizing
map <C-Left>  <C-W><
map <C-Right> <C-W>>
map <C-Up>    <C-W>+
map <C-Down>  <C-W>-
"Window switching
map <A-Left>  <C-w><Left>
map <A-Right> <C-w><Right>
map <A-Up>    <C-w><Up>
map <A-Down>  <C-w><Down>
imap <A-Left>  <Esc><C-w><Left>
imap <A-Right> <Esc><C-w><Right>
imap <A-Up>    <Esc><C-w><Up>
imap <A-Down>  <Esc><C-w><Down>
"Window movement
map <F8>  <C-w>H
map <F9>  <C-w>J
map <F10> <C-w>K
map <F12> <C-w>L
imap <F8>  <Esc><C-w>Hi
imap <F9> <Esc><C-w>Ji
imap <F10> <Esc><C-w>Ki
imap <F12> <Esc><C-w>Li
"Cut-Copy-Replace word under cursor
map <F2> diw
map <F3> yiw
map <F4> ciw<C-r>0<Esc>
"Buffer list
map <F5> :buffers<CR>:buffer<Space>
imap <F5> <Esc>:buffers<CR>:buffer<Space>
"Hungarian spell check
map <F7> :setlocal spell spelllang=hu<Enter>
map ]s ]sz=
map [s [sz=

"Auto-source this file every time it's written
au! BufWritePost ~/.vimrc source %

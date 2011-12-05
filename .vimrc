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
"set cindent
"set smarttab

"Key mapping for window switching and movement
map <F5> :buffers<CR>:buffer<Space>
map <F7> :setlocal spell spelllang=hu<Enter>
map <A-Left>  <C-w><Left>
map <A-Right> <C-w><Right>
map <A-Up>    <C-w><Up>
map <A-Down>  <C-w><Down>
map <F9>  <C-w>H
map <F10> <C-w>J
map <F11> <C-w>K
map <F12> <C-w>L
imap <F5> <Esc>:buffers<CR>:buffer<Space>
imap <A-Left>  <Esc><C-w><Left>
imap <A-Right> <Esc><C-w><Right>
imap <A-Up>    <Esc><C-w><Up>
imap <A-Down>  <Esc><C-w><Down>
imap <F9>  <Esc><C-w>Hi
imap <F10> <Esc><C-w>Ji
imap <F11> <Esc><C-w>Ki
imap <F12> <Esc><C-w>Li

"Auto-source this file every time it's written
au! BufWritePost ~/.vimrc source %


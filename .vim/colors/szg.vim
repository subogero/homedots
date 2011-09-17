" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer: SZABO Gergely <szg@subogero.com>
" Last Change: 2011 July 13
" Based on blue.vim, background black, status/vertical lines gray/darkGray, 
" operators white, line numbers gray.

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "szg"
hi Normal	guifg=yellow	guibg=black	ctermfg=gray	
hi NonText	guifg=magenta	ctermfg=lightMagenta
hi comment	guifg=gray	ctermfg=darkCyan	gui=bold 
hi constant	guifg=cyan	ctermfg=lightRed
hi identifier	guifg=gray	ctermfg=cyan
hi statement	guifg=white	ctermfg=white	gui=none
hi preproc	guifg=green	ctermfg=green
hi type		guifg=orange	ctermfg=yellow	
hi special	guifg=magenta	ctermfg=lightMagenta	
hi Underlined	guifg=cyan	ctermfg=cyan	gui=underline	cterm=underline
hi label	guifg=yellow	ctermfg=yellow
hi operator	guifg=orange	gui=bold	ctermfg=white	
hi cOperator	guifg=orange	gui=bold	ctermfg=white	
hi cDelimiter	guifg=orange	gui=bold	ctermfg=white	

hi ErrorMsg	guifg=orange	guibg=black	ctermfg=lightRed
hi WarningMsg	guifg=cyan	guibg=black	ctermfg=cyan	gui=bold
hi ModeMsg	guifg=yellow	gui=NONE	ctermfg=white
hi MoreMsg	guifg=yellow	gui=NONE	ctermfg=gray
hi Error	guifg=red	guibg=black	gui=underline	ctermfg=red

hi Todo		guifg=black	guibg=orange	ctermfg=black	ctermbg=darkYellow
hi Cursor	guifg=black	guibg=white	ctermfg=black	ctermbg=gray
hi Search	guifg=black	guibg=orange	ctermfg=black	ctermbg=darkYellow
hi IncSearch	guifg=black	guibg=yellow	ctermfg=black	ctermbg=darkYellow
hi LineNr	guifg=gray	ctermfg=darkGray
hi title	guifg=white	gui=bold	cterm=bold
hi MatchParen   ctermbg=red	ctermfg=white

hi StatusLineNC	gui=NONE	guifg=black	guibg=white	ctermfg=darkYellow
hi StatusLine	gui=bold	guifg=cyan	guibg=black	ctermfg=gray
hi VertSplit	gui=none	guifg=blue	guibg=white	ctermfg=darkYellow

hi Visual	term=reverse	ctermfg=yellow	ctermbg=black	guifg=black	guibg=darkCyan

hi DiffChange	guibg=darkGreen	guifg=black	ctermbg=darkGreen	ctermfg=black
hi DiffText	guibg=olivedrab	guifg=black	ctermbg=lightGreen	ctermfg=black
hi DiffAdd	guibg=slateblue	guifg=black	ctermbg=blue		ctermfg=black
hi DiffDelete   guibg=coral	guifg=black	ctermbg=cyan		ctermfg=black

hi Folded	guibg=orange	guifg=black	ctermbg=yellow		ctermfg=black
hi FoldColumn	guibg=gray30	guifg=black	ctermbg=gray		ctermfg=black
hi cIf0		guifg=gray	ctermfg=gray


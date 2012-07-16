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
hi Normal	ctermfg=gray
hi NonText	ctermfg=lightMagenta
hi comment	ctermfg=darkGray 
hi constant	ctermfg=lightRed
hi identifier	ctermfg=cyan
hi statement	ctermfg=white
hi preproc	ctermfg=green
hi type		ctermfg=yellow
hi special	ctermfg=lightMagenta
hi Underlined	ctermfg=cyan				cterm=underline
hi label	ctermfg=yellow
hi operator	ctermfg=white
hi cOperator	ctermfg=white
hi cDelimiter	ctermfg=white

hi ErrorMsg	ctermfg=lightRed
hi WarningMsg	ctermfg=cyan
hi ModeMsg	ctermfg=white
hi MoreMsg	ctermfg=gray
hi Error	ctermfg=red

hi Todo		ctermfg=black		ctermbg=darkYellow
hi Cursor	ctermfg=black		ctermbg=white
hi Search	ctermfg=white		ctermbg=magenta
hi IncSearch	ctermfg=black		ctermbg=darkYellow
hi LineNr	ctermfg=darkGray
hi title						cterm=bold
hi MatchParen	ctermfg=white		ctermbg=red

hi StatusLineNC	ctermfg=darkGray	ctermbg=white
hi StatusLine	ctermfg=gray		ctermbg=black
hi VertSplit	ctermfg=darkGray  	ctermbg=white

hi Visual	ctermfg=blue		ctermbg=white	term=reverse

hi DiffChange	ctermfg=black		ctermbg=darkGreen
hi DiffText	ctermfg=black		ctermbg=lightGreen
hi DiffAdd	ctermfg=black		ctermbg=blue
hi DiffDelete   ctermfg=black		ctermbg=cyan

hi Folded	ctermfg=black		ctermbg=yellow
hi FoldColumn  	ctermfg=black 		ctermbg=gray 
hi cIf0		ctermfg=gray

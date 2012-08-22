set nocompatible
"source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim  "use windows short key
"behave mswin

set diffexpr=MyDiff()
function MyDiff()
	let opt = '-a --binary '
	if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
	if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
	let arg1 = v:fname_in
	if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
	let arg2 = v:fname_new
	if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
	let arg3 = v:fname_out
	if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
	let eq = ''
	if $VIMRUNTIME =~ ' '
		if &sh =~ '\<cmd'
			let cmd = '""' . $VIMRUNTIME . '\diff"'
			let eq = '"'
		else
			let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
		endif
	else
		let cmd = $VIMRUNTIME . '\diff'
	endif
	silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction
"end old vimrc


let mapleader=","
map <silent> <leader>ss :so $vim/_vimrc<cr>
map <silent> <leader>ee :e $vim/_vimrc<cr>
map <silent> <leader>oo :so session.vim<cr>
map <silent> <leader>mm :mks!<cr>

au! bufwritepost _vimrc so $vim/_vimrc "autocmd
map <silent> <leader>,mf GUIEnter * simalt ~x


" CTRL-Tab is Next window
noremap <C-Tab> <C-W>w
inoremap <C-Tab> <C-O><C-W>w
cnoremap <C-Tab> <C-C><C-W>w
onoremap <C-Tab> <C-C><C-W>w

color solarized
winpos 80 40
syntax on
filetype on
filetype plugin on
filetype indent on

set lines=40 columns=140
set nocuc 
set noswapfile
set nobackup
set nowb "writeback
"set backupdir=~/tmp

set nu "number
set ru "ruler
set ai "auto indent
set ci "c indent
set ar "autoread
set wmnu "wild menu
set hls "highlight search
set ic "ignorecase

set gfn=consolas:h11
"set gfn=menlo:h11
set ts=2 "tab stop
set sts=2 "soft tab stop
set sw=2 "shift width
set bs=2 "backspace
set et "expand tab

set enc=utf-8 "encoding
set fenc=utf-8 "file encoding
"set fdm=indent "fold method
set hi=100 "history
set go-=T "gui options
"set go-=m 
set shm=atI "short mess: no default boot info
set ssop-=curdir "session options
set ssop+=sesdir "session options

set cul "cursor line
"set cuc "cursor culumn

set noeb "noerrorbells
set novb "novisualbell
"set vb t_vb=

let g:vimim_map=3
map <F4> :call g:Jsbautify()<CR>

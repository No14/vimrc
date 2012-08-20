let mapleader=","
map <silent> <leader>ss :so /etc/vimrc<cr>
map <silent> <leader>ee :e /etc/vimrc<cr>
map <silent> <leader>wo :so session.vim<cr>
map <silent> <leader>ww :mks!<cr>

au! bufwritepost vimrc so /etc/vimrc "autocmd

" CTRL-Tab is Next window
noremap <C-Tab> <C-W>w
inoremap <C-Tab> <C-O><C-W>w
cnoremap <C-Tab> <C-C><C-W>w
onoremap <C-Tab> <C-C><C-W>w

color solarized
winpos 50 40
syntax on
filetype on
filetype plugin on
filetype indent on

set nocp "nocompatible
set lines=40 columns=140
set nocuc 
set noswf "noswapfile
set nobk "nobackup
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

set gfn=consolas\ 12
"set gfn=consolas:h10
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
set vb t_vb=

let g:vimim_map=3
map <F4> :call g:Jsbautify()<CR>


let mapleader=","
map <silent> <leader>ss :so $HOME/.vimrc<cr>
map <silent> <leader>ee :e $HOME/.vimrc<cr>
map <silent> <leader>sd :so $HOME/.gvimrc<cr>
map <silent> <leader>ed :e $HOME/.gvimrc<cr>
map <silent> <leader>wo :so session.vim<cr>
map <silent> <leader>ww :mks!<cr>

" CTRL-Tab is Next window
noremap <C-Tab> <C-W>w
inoremap <C-Tab> <C-O><C-W>w
cnoremap <C-Tab> <C-C><C-W>w
onoremap <C-Tab> <C-C><C-W>w
nm <Leader>p "+p
nm <Leader>y "+y

syn on "syntax 
filetype on
filetype plugin on
filetype indent on

set nocp "nocompatible
set lines=40 columns=130
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

set gfn=Consolas:h14
" set gfw=HiraginoSansGB-W3:h16
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
set ls=2   "linestatus

set cul "cursor line
"set cuc "cursor culumn

set noeb "noerrorbells
set novb "novisualbell
set vb t_vb=

let g:vimim_map=3
map <F4> :call g:Jsbautify()<CR>

"vimim
let g:vimim_cloud=-1


"for mac chinese input method
" set noimdisable
" autocmd! InsertLeave * set imdisable|set iminsert=0
" autocmd! InsertEnter * set noimdisable|set iminsert=0


""""""" Powerline start """""""
" set ls=2   " Always show the statusline
" let g:Powerline_colorscheme='solarized256'
" let g:Powerline_symbols='fancy'
" let g:Powerline_symbols='compatible'
" let g:Powerline_symbols_override = {
        " \ 'BRANCH': [0x2213],
        " \ 'LINE': 'L',
        " \ }
" set fcs+=stl: ,stlnc:
 " set nocompatible
" set t_Co=256
" let g:Powerline_cache_enabled = 1
" let g:Powerline_cache_file='~/.vim/bundle/powerline/Powerline.cache'
"""""" Powerline end """""""

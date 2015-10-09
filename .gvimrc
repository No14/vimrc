if has('gui_running')
  winpos 100 30

  au! bufwritepost gvimrc so /etc/gvimrc "autocmd

  "solarized color scheme options
  ":h solarized
	set bg=dark "background
  let g:solarized_menu=0
  let g:solarized_bold=0    "default value is 1
  colo solarized
	" colorscheme solarized
endif

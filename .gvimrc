set guifont=JetBrainsMonoNL\ Nerd\ Font\ Semi-Bold\ 16
set guioptions -=m " remove menubar
set guioptions -=T " remove toolbar
set guioptions -=r " remove right scrollbar

" This will only work if `vim --version` includes `+clientserver`!
if empty(v:servername) && exists('*remote_startserver')
  call remote_startserver('VIM')
endif

hi SpellBad gui=undercurl

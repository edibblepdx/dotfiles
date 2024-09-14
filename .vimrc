set number
set smartindent
set autoindent
set termguicolors
set ruler
set wrap
set cursorline
set showcmd
set hlsearch
" set showmode
set noshowmode

filetype plugin on

" enable syntax highlighting
syntax on

" syntax highlighting for .tpp files
au Bufread,BufNewFile *.tpp set filetype=cpp

" tab auto completion for vim commands
set wildmenu
" set wildmode=longest:full,full
set wildmode=list:longest

" status bar
set laststatus=2

" visual column for how long a singlel ine should be
" set colorcolumn=81

" set tabs to 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

" disable bell
set visualbell
set t_vb=
set belloff=all

call plug#begin()

" List your plugins here
Plug 'lervag/vimtex'
Plug 'itchyny/lightline.vim'
" Colorschemes
Plug 'catppuccin/vim', { 'as': 'catppuccin'}
Plug 'rafi/awesome-vim-colorschemes'    " Collection

call plug#end()

" Colorscheme Settings
set background=dark
colorscheme gruvbox
let g:lightline = {'colorscheme': 'gruvbox'}

let g:vimtex_view_method = 'zathura'

" transparent
" hi Normal guibg=NONE ctermbg=NONE

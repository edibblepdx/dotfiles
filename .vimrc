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
set noshowmode " handled by lightline
set scrolloff=2

" enable syntax highlighting
syntax on

" filetype plugin
filetype on
filetype plugin on
filetype indent on
au Bufread,BufNewFile *.tpp set filetype=cpp " syntax for .tpp files as .cpp

" set tabs to 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

" disable bell
set visualbell
set t_vb=
set belloff=all

" tab auto completion for vim commands
set wildmenu
" set wildmode=longest:full,full
set wildmode=list:longest

" status bar
set laststatus=2

call plug#begin()

" List your plugins here
Plug 'SirVer/ultisnips'
Plug 'lervag/vimtex'
Plug 'itchyny/lightline.vim'
" Colorschemes
Plug 'catppuccin/vim', { 'as': 'catppuccin'}
Plug 'rafi/awesome-vim-colorschemes'    " Collection

call plug#end()

let g:UltiSnipsExpandTrigger       = '<Tab>'    " use Tab to expand snippets
let g:UltiSnipsJumpForwardTrigger  = '<Tab>'    " use Tab to move forward through tabstops
let g:UltiSnipsJumpBackwardTrigger = '<S-Tab>'  " use Shift-Tab to move backward through tabstops
let g:vimtex_view_method = 'zathura'

" Colorscheme Settings
set background=dark
colorscheme gruvbox
let g:lightline = {'colorscheme': 'gruvbox'}

" visual column for how long a singlel ine should be
" set colorcolumn=81

" transparent
" hi Normal guibg=NONE ctermbg=NONE

"Set line no, buffer, search, highlight, autoindent and more.
set encoding=utf-8
set nu
set hlsearch
set hidden
set ignorecase
set incsearch
set smartcase
set showmatch
set autoindent
set ruler
set vb
set viminfo+=n$VIM/_viminfo
set noerrorbells
set showcmd
set mouse=a
set history=1000
set undolevels=1000
set list  "Display invisible characters
set tabstop=4 shiftwidth=4 expandtab  "Converting tabs to sapces

"Set the status line options. Make it show more information.
set laststatus=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}

"For vim
:cd $home

"For pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

"Set Color Scheme and Font Options
colorscheme molokai
set guifont=Consolas:h16

"For NERDtree
"autocmd vimenter * NERDTree
"map <C-n> :NERDTreeToggle<CR>

"For taglist
filetype on
nnoremap <silent> <F8> :TlistToggle<CR>
let Tlist_Auto_Open = 1
"let Tlist_Display_Prototype = 1
let Tlist_Show_Menu = 1
let Tlist_Sort_Type = "name"
let Tlist_Use_Right_Window = 1
let Tlist_Use_SingleClick = 1

"For FuzzyFinder
nmap <silent> <F9> :FufFile<CR>
nmap <silent> <F10> :FufTag<CR>

"For ctags in Mac OS
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'

" HTML -> JavaScript string
vmap <silent> ;h :s?^\(\s*\)+ '\([^']\+\)',*\s*$?\1\2?g<CR>
vmap <silent> ;q :s?^\(\s*\)\(.*\)\s*$? \1 + '\2'?<CR>


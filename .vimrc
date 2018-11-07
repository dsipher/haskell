call plug#begin('~/.local/share/nvim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'neovimhaskell/haskell-vim'
Plug 'bling/vim-bufferline'
Plug 'jiangmiao/auto-pairs'
Plug 'dracula/vim',{'as':'dracula'}
call plug#end()

syntax on
filetype plugin indent on

set termguicolors
colorscheme dracula
set noshowmode
set laststatus=2
"Primary clipboard
set clipboard+=unnamedplus
"Cursorshape
set guicursor=
"Linenumbers
set number
"Relative numbers
set relativenumber
"Highlight matching braces
set showmatch
"Visualbell instead of beep
set visualbell
"Highlight all searches
set hlsearch
"Smartcase search
set smartcase
"Case insensitive search
set ignorecase
"Search for strings incrementally
set incsearch
"Autoindent new lines
set autoindent
"Number of autoindent spaces
set shiftwidth=4
set smartindent
set smarttab
"Spaces per tab
set softtabstop=4
"Col and row ruler 
set ruler
"Number of undo
set undolevels=1000
"modern backspace behavior 
set backspace=indent,eol,start
"lightline
let g:lightline = {
    \ 'colorscheme': 'one',
    \ }

"term
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
au TermOpen * setlocal nonumber norelativenumber bufhidden=hide
tnoremap <Esc> <C-\><C-n>
noremap <C-k> :q<CR>
nnoremap <C-o> :rightbelow split term://bash<CR>
nnoremap <C-j> :rightbelow sbn<CR>
nnoremap <tab> :bn<CR>

"haskell 
let g:haskell_indent_if = 3
let g:haskell_indent_case = 2
let g:haskell_indent_let = 4
let g:haskell_indent_where = 6
let g:haskell_indent_before_where = 2
let g:haskell_indent_after_bare_where = 2
let g:haskell_indent_do = 3
let g:haskell_indent_in = 1
let g:haskell_indent_guard = 2
let g:haskell_indent_section = 2
let g:haskell_indent_case_alternative = 1

let g:haskell_classic_highlighting = 1
"let g:haskell_enable_quantification = 1
"let g:haskell_enable_recursivedo = 1
"let g:haskell_enable_arrowsyntax = 1
"let g:haskell_enable_pattern_synonyms = 1
"let g:haskell_enable_typeroles = 1
"let g:haskell_enable_static_pointers = 1
"let g:haskell_backpack = 1

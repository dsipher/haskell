call plug#begin('~/.local/share/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim',{'as':'dracula'}
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

let g:scratch_top = 0

"let g:airline_theme='minimalist'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#bufferline#enabled = 1

syntax enable
set termguicolors
colorscheme dracula
set noshowmode
set laststatus=0

au BufEnter * if &buftype == 'terminal' | :startinsert | endif
au TermOpen * setlocal nonumber norelativenumber bufhidden=hide
tnoremap <Esc> <C-\><C-n>
noremap <C-k> :q<CR>
nnoremap <C-o> :rightbelow split term://bash<CR>
nnoremap <C-j> :rightbelow sbn<CR>
nnoremap <tab> :bn<CR>

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

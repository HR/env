" """""""""""""""""""""""""""""""""
" Vim config
" """""""""""""""""""""""""""""""""

" No vi compatibility
set nocompatible

" Turn on syntax highlighting
syntax on

" Turn on line numbering
set number

" Turn on relative numbering
set relativenumber

" Show file stats
set ruler

" Helps force plugins to load correctly when it is turned back on below
filetype off

" For plugins to load correctly
filetype plugin indent on

" Security
set modelines=0

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Remap page up and down to Ctrl k and j
nnoremap <C-j> <PageDown>
nnoremap <C-k> <PageUp>

" Formatting
"map <leader>q gqip
" Auto indent
"map ai gg=G

" Visualize tabs and newlines
"set listchars=tab:▸\ ,eol:¬
" To enable by default
"set list
" Or use your leader key + l to toggle on/off
"map <leader>l :set list!<CR> " Toggle tabs and EOL
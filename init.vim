" basic set up
syntax enable
filetype plugin indent on
set hidden
set mouse=a
set number
set expandtab
set shiftwidth=4
set tabstop=4
set ignorecase
set smartcase
set incsearch

" set up leader key
let mapleader = ","

" vim plug
call plug#begin()
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'gosukiwi/vim-atom-dark'
Plug 'sickill/vim-monokai'
Plug 'navarasu/onedark.nvim'
Plug 'rust-lang/rust.vim'
Plug 'ap/vim-buftabline'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-scripts/indentpython.vim'
Plug 'tpope/vim-fugitive'
Plug 'neovim/nvim-lspconfig'
Plug 'simrat39/rust-tools.nvim'
call plug#end()

" nerdtree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" nerd commenter
let g:NERDCreateDefaultMappings = 1

" colorscheme
set background=dark
colorscheme onedark

" buf-tabline bindings
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprev<CR>

" remove highlights
nnoremap <ESC> :nohl<CR>

" leader bindinds
nnoremap <leader>b :w<CR>:!cargo build<CR>
nnoremap <leader>t :w<CR>:!cargo build && poetry run pytest<CR>
nnoremap <leader>d :bd<CR>
nnoremap <leader>s :w<CR>:source %<CR>
nnoremap <leader>i :w<CR>:source %<CR>:PlugInstall<CR>
nnoremap <leader>o :Files<CR>
nnoremap <leader>w :bd<CR>
nnoremap <leader>gg :G 
nnoremap <leader>gs :G status<CR>
nnoremap <leader>gd :G diff<CR>

" line length soft limit
set colorcolumn=88


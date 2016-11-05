" ensures that vim-plug is installed
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin()

Plug 'altercation/vim-colors-solarized'
Plug 'jalvesaq/Nvim-R'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'kien/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug  'vim-airline/vim-airline-themes'
Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdcommenter'
Plug 'terryma/vim-expand-region'


call plug#end()

set termguicolors
set background=dark
colorscheme solarized

"""""""""""""""""
" Simple config "
"""""""""""""""""
nmap <F3> :NERDTreeToggle<CR>
let mapleader = "\<Space>"
let maplocalleader = ","
nnoremap <Leader>w :w<CR>

" bindings for terryma/vim-expand-region
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" The current buffer can be put to the background without writing to disk
set hidden

"  set together, will make /-style searches case-sensitive only 
" if there is a capital letter in the search expression
set ignorecase 
set smartcase

set title

set scrolloff=3

nnoremap <C-e> 5<C-e>
nnoremap <C-y> 5<C-y>

" disable search highlighting with leader s
set hlsearch
set incsearch
nmap <silent> <Leader>s :silent :nohlsearch<CR>

set visualbell

nmap <silent> <Leader>n :silent :bn<CR>
nmap <silent> <Leader>p :silent :bp<CR>

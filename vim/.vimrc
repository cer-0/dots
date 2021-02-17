" plugins
call plug#begin()

" git
Plug 'tpope/vim-fugitive'

" syntax and indent
Plug 'sheerun/vim-polyglot'

" comments
Plug 'tpope/vim-commentary'

" set root directory
Plug 'airblade/vim-rooter'

" rust
Plug 'rust-lang/rust.vim'

" lisps
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'kovisoft/slimv'

" interface
Plug 'itchyny/lightline.vim'
Plug 'junegunn/goyo.vim'
Plug 'preservim/nerdtree'
Plug 'Yggdroot/indentLine'

" color schemes
Plug 'cocopon/iceberg.vim'
Plug 'phanviet/vim-monokai-pro'

call plug#end()

" global config
" session
set nocompatible
set noswapfile
set hidden

" filetype detection
filetype plugin on

" indent
set smartindent

" buffer split
set splitbelow
set splitright

" search
set nohlsearch
set incsearch

" interface
syntax on
set wildmenu
set number
set relativenumber
set colorcolumn=80
set scrolloff=1

" colors
set background=dark
if exists('+termguicolors')
       let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
       let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
       set termguicolors
endif
colorscheme monokai_pro

" leader
let mapleader = " "

" maps
" save and quit
nnoremap <leader>s :update<cr>
nnoremap <leader>w :update<cr>
nnoremap <Leader>q :q<cr>
nnoremap <Leader>Q :qa<cr>

" move between buffers
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" move lines
nnoremap <silent> <Up>   :move-2<cr>
nnoremap <silent> <Down> :move+<cr>

" movement in insert mode
inoremap <C-h> <C-o>h
inoremap <C-l> <C-o>a
inoremap <C-j> <C-o>j
inoremap <C-k> <C-o>k

" move between tabs
nnoremap ]t :tabn<cr>
nnoremap [t :tabp<cr>

" vimrc
map <Leader>ev :e $MYVIMRC<CR>
map <Leader>sv :source $MYVIMRC<CR>

" create buffers
map <Leader>vs :vsp<CR>
map <Leader>hs :sp<CR>

" spellchecking
map <Leader>oe :setlocal spell spelllang=es_mx<CR>
map <Leader>ou :setlocal spell spelllang=en_us<CR>
map <Leader>oo :set nospell<CR>

" toggle hex view
map <Leader>he :%!xxd<CR>
map <Leader>hr :%!xxd -r<CR>

" invoke a terminal
map <Leader><F12> :terminal<CR>

" plugins configuration
" goyo
map <leader>F :Goyo<CR>
let g:goyo_height = 40

" lightline
set laststatus=2
let g:lightline = { 'colorscheme': 'monokai_pro' }

" nerdtree
nnoremap <Leader>t :NERDTreeToggle<CR>
nnoremap <C-t> :NERDTreeFind<CR>

" slimv
let g:slimv_repl_split = 2
let g:paredit_electrical_return = 0

" rainbow parenthesis
map <Leader>rp :RainbowParentheses!!<CR>
augroup rainbow_lisp
        autocmd!
        autocmd FileType lisp,scheme RainbowParentheses
augroup END

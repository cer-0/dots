" plugins
call plug#begin()

" git
Plug 'tpope/vim-fugitive'

" comments
Plug 'tpope/vim-commentary'

" rust
Plug 'rust-lang/rust.vim'

" lisps
Plug 'junegunn/rainbow_parentheses.vim'

" interface
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
" Plug 'Yggdroot/indentLine'
Plug 'junegunn/goyo.vim'

" color schemes
Plug 'cocopon/iceberg.vim'

call plug#end()

" global config
" session
set noswapfile
set hidden

" buffer split
set splitright
set splitbelow

" search
set nohlsearch

" clipboard
set clipboard=unnamed,unnamedplus

" tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" indent
set smartindent

" interface
set number
set relativenumber
set scrolloff=1
set colorcolumn=80
set listchars=tab:\|\ 

" colors
set background=dark
if exists('+termguicolors')
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
	set termguicolors
endif
colorscheme iceberg

" leader
let mapleader=" "

" mappings
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

" lightline
set laststatus=2
let g:lightline = {
			\ 'colorscheme': 'iceberg',
			\ }

" nerdtree
nnoremap <Leader>t :NERDTreeToggle<CR>
nnoremap <C-t> :NERDTreeFind<CR>

" rainbow parenthesis
nnoremap <Leader>rp :RainbowParentheses!!<CR>
augroup rainbow_lisp
	autocmd!
	autocmd FileType lisp,scheme RainbowParentheses
augroup END
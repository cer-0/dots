 " Vim-Plug
 call plug#begin()
 Plug 'python-mode/python-mode', { 'branch': 'develop' }
 Plug 'rust-lang/rust.vim'
 Plug 'itchyny/lightline.vim'
 Plug 'tpope/vim-commentary'
 Plug 'tpope/vim-fugitive'
 Plug 'junegunn/goyo.vim'
 Plug 'preservim/nerdtree'
 Plug 'Yggdroot/indentLine'
 Plug 'airblade/vim-rooter'
 Plug 'altercation/vim-colors-solarized'
 Plug 'morhetz/gruvbox'
 Plug 'arcticicestudio/nord-vim'
 Plug 'cocopon/iceberg.vim'
 " Scheme stuff
 Plug 'Olical/vim-scheme', { 'for': 'scheme', 'on': 'SchemeConnect' }
 Plug 'guns/vim-sexp'
 Plug 'tpope/vim-sexp-mappings-for-regular-people'
 call plug#end()

 " General
 set number relativenumber
 syntax on
 set nocompatible
 filetype plugin on
 set wildmenu
 set splitbelow splitright
 set hlsearch

 " Color scheme
 " let g:gruvbox_termcolors=16
 set background=dark
 if exists('+termguicolors')
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
	set termguicolors
 endif
 colorscheme iceberg

 " Global
 let mapleader = " "

 " Maps
 map <C-h> <C-w>h
 map <C-j> <C-w>j
 map <C-k> <C-w>k
 map <C-l> <C-w>l
 map <Leader>ev :e $MYVIMRC<CR>
 map <Leader>sv :source $MYVIMRC<CR>
 map <Leader>vs :vsp<CR>
 map <Leader>sp :sp<CR>
 map <Leader>oe :setlocal spell spelllang=es_mx<CR>
 map <Leader>ou :setlocal spell spelllang=en_us<CR>
 map <Leader>oo :set nospell<CR>
 map <Leader><F2> :!x %<CR>
 map <Leader>he :%!xxd<CR>
 map <Leader>hr :%!xxd -r<CR>
 map <Leader><F12> :term<CR>
 " Normal Maps
 nnoremap <Left> diWBPa <Esc>Elx2B
 nnoremap <Right> diWEa <Esc>p2BX2E
 nnoremap <Up> ddkP
 nnoremap <Down> ddjP
 " Visual Maps
 vnoremap <Leader>mi c**<Esc>Pe
 vnoremap <Leader>mb c****<Esc>hPe
 vnoremap <Leader>my c``<Esc>Pe
 vnoremap <Leader>mc c```<CR>```<Esc>P

 " Plugins
 " Python-Mode
 let g:pymode_python = 'python3'

 " Goyo
 map <leader>F :Goyo<CR>
 let g:goyo_height = 40

 " Lightline
 set laststatus=2
 let g:lightline = {
	\ 'colorscheme': 'iceberg',
	\ }

 " NerdTree
 map <Leader><F3> :NERDTreeToggle<CR>

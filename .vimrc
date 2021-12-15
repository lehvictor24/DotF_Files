call plug#begin('~/.vim/plugged')
	Plug 'tpope/vim-surround'
	Plug 'preservim/nerdtree'
	Plug 'tpope/vim-fugitive'
	Plug 'scrooloose/syntastic'
	Plug 'airblade/vim-gitgutter'
	Plug 'vim-airline/vim-airline'
	Plug 'scrooloose/nerdcommenter'
	Plug 'valloric/youcompleteme'
	Plug 'ctrlpvim/ctrlp.vim'
	Plug 'godlygeek/tabular'
	Plug 'junegunn/fzf'
  Plug 'mbbill/undotree'
  Plug 'drewtempelmeyer/palenight.vim'
call plug#end()
syntax on

set nohlsearch
set hidden
set noerrorbells
set shiftwidth=4
set expandtab
set tabstop=4 softtabstop=4
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set incsearch
set scrolloff=8
set noshowmode
set background=dark
set runtimepath^=~/.vim/plugin
set ruler
set autochdir
set guicursor+=n-v-c:blinkon175
set relativenumber
set updatetime=1000
set list
set hls
set isfname+={,}
set isfname+=(,)

if has("persistent_undo")
    set undodir=~/.vim/undodir
        set undofile
    endif

"call plug#begin('~/.vim/plugged')
"    Plug 'git://github.com/tpope/vim-commentary'
"
"    Plug 'git://github.com/kien/rainbow_parentheses.vim' " Help see parenthesis enclosing
"
"    Plug 'git://github.com/drewtempelmeyer/palenight.vim' " Nice color scheme
"
"    Plug 'git://github.com/szw/vim-tags' " Generate CTags
"
"    Plug 'git://github.com/preservim/tagbar' " See tags in an interface
"
"    Plug 'git://github.com/tpope/vim-sensible' 
"
"    Plug 'git://github.com/tpope/vim-fugitive'
"
"    Plug 'git://github.com/tenfyzhong/tagbar-makefile.vim'
"
"    Plug 'git://github.com/scrooloose/syntastic'
"
"    Plug 'git://github.com/godlygeek/tabular'
"call plug#end()

set background=dark
colorscheme palenight


let NERDTreeQuitOnOpen=1
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>
nnoremap <F5> :UndotreeToggle<cr>
nnoremap <F4> :NERDTree<cr>
nnoremap <C-j> :bprev<CR>                                                                            
nnoremap <C-k> :bnext<CR>
nmap <F8> :TagbarToggle<CR>
nnoremap <silent> <C-l> :nohl<CR><C-l>
nmap <F8> :TagbarToggle<CR>

let g:ctrlp_cmd = 'CtrlP $RF_TOP'
let g:ctrlp_clear_cache_on_exit = 0

let s:tlist_def_verilog_systemverilog_settings = 'verilog;m:module;c:constant;P:parameter;' .
            \ 'e:event;r:register;t:task;w:write;p:port;v:variable;f:function'


" Return to last edit position when opening files (You want this!)
 autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
 if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
 endif

" if (has("termguicolors"))
"  set termguicolors
"endif

"set term=screen-256color

"   _  _    _/_ . _  /_ _
"  /_ /_//_//  / / // //_/
set switchbuf=""
set ttyfast " Send more characters at a given time
set visualbell " Use visual bell instead of audible bell (annnnnoying)
set wildchar=<TAB> " Character for CLI expansion (TAB-completion)
set wildignore+=.DS_Store
set wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.gif,*.psd,*.o,*.obj,*.min.js
set wildignore+=*/bower_components/*,*/node_modules/*
set wildignore+=*/smarty/*,*/vendor/*,*/.git/*,*/.hg/*,*/.svn/*,*/.sass-cache/*,*/log/*,*/tmp/*,*/build/*,*/ckeditor/*,*/doc/*,*/source_maps/*,*/dist/*
set wildmenu " Hitting TAB in command mode will show possible completions above command line
set wildmode=list:longest " Complete only until point of ambiguity
set winminheight=0 " Allow splits to be reduced to a single line
set wrapscan " Searches wrap around end of file
set shortmess=atI
set number
set ruler
set encoding=utf-8
set guifont=FiraCode
inoremap jk <Esc>
syntax on
call plug#begin()
	Plug 'tomasr/molokai'
	Plug 'scrooloose/nerdcommenter'
	Plug 'scrooloose/nerdtree'
	Plug 'ervandew/supertab'
	Plug 'https://github.com/qwelyt/TrippingRobot'
	Plug 'jeffkreeftmeijer/vim-numbertoggle'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'gioele/vim-autoswap'
	Plug 'rip-rip/clang_complete'
	Plug 'ap/vim-css-color'
	Plug 'morhetz/gruvbox'
	Plug 'gorodinskiy/vim-coloresque'
	Plug 'mattn/emmet-vim'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'stephpy/vim-yaml'
call plug#end()
colorscheme default
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree")
      \ && b:NERDTree.isTabTree())| q | endif 
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
noremap <C-c> "*y
map <C-p> "*p
let g:airline_theme='minimalist'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#hunks#non_zero_only = 1
set clipboard=unnamedplus
let mapleader = "\<Space>" 
nnoremap <leader>x :x!<CR> 
nnoremap <leader>q :q!<CR> 
"fzf
nnoremap <leader>b :Buffers<Cr>
nnoremap <leader>o :Files <C-R>=expand('%:h')<CR><CR>

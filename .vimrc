"# lang and encoding
set encoding=utf-8
set langmenu=zh_TW
let $LANG='en_US.UTF-8'

"# general
set ff=unix
set nobackup
set noswapfile " no swap file
set nobomb " remove BOM
set nohlsearch " no search highlight
set mouse=a " enable mouse copy (complicated)
set showmatch " show the matching part of the pair for [] {} and ()
set autochdir " set working directory same with current editing file
set history=512
set clipboard=unnamed " yank to system clipboard, require vim-gtk
set laststatus=2 " show status at bottom
set timeoutlen=2000 " combine key timeout
set ttimeoutlen=0 " ESC timeout
set path+=** " :e file automplete in subdirectories
set wildmenu " enable tab completion in command mode
set nolist " dont show tailing space or tab
set nowrap " no wrap

"# gui
set t_Co=256 " support 256 colors
set background=dark

"## use relative line number
set nu rnu

"## default split location
set splitbelow
set splitright

"# format
set foldmethod=indent
set foldlevel=99
set tabstop=4
set expandtab
set softtabstop=4
syntax on

"## indent
set autoindent
set smartindent
set cindent
set shiftwidth=4
set indentexpr=

"# keymap
let mapleader=" "

"## tootle wrap
nnoremap <leader>w :set wrap!<cr>

"## toogle sympyfold folding
nnoremap <leader>f za

"## tabs
nnoremap <leader>tn :tabnew<cr>
nnoremap <leader>tc :tabclose<cr>

"## buffer
nnoremap <leader>bn :bn<cr>
nnoremap <leader>bp :bp<cr>
nnoremap <leader>bd :bp<cr>:bd #<cr>
nnoremap <leader>bc :BufOnly<cr>
nnoremap <leader>ls :ls<cr>

"## split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"## toggle autoindent
nnoremap <F10> :set autoindent! cindent! smartindent!<cr>

"## disable Q keybind to ex mode
nnoremap Q <Nop>


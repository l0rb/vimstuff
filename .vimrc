filetype plugin indent on
set nocompatible

let mapleader = " "

" plugins - https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')
    Plug 'tpope/vim-fugitive'
    Plug 'danro/rename.vim'
    Plug 'kshenoy/vim-signature'
    Plug 'nanotech/jellybeans.vim'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'jeetsukumaran/vim-buffergator'
    Plug 'vim-airline/vim-airline'
    "Plug 'StanAngeloff/php.vim'
call plug#end()

source /home/lorb/.vimrcfunctions

" search is case sensitive only when it contains uppercase
set ignorecase
set smartcase

" width of a tab, spaces instead of tabs
set tabstop=4
set expandtab
set autoindent
set smartindent

" folding (optimal for python)
set foldmethod=indent
set shiftwidth=4 " indentlevel = indent/shiftwidth, so i want this to be the same value as tabstop
set foldignore=  " do not ignore comments

" syntax highlighting
sy on 
colo nightshade
hi Todo none 
hi clear SignColumn

" do not override terminal background
hi Folded ctermbg=none 
hi Normal ctermbg=none 

" basic interface stuff
set nu
set showcmd
set ruler
set wildmenu

" delete everything with backspace
set backspace=eol,start,indent

" Persistent undos
set undodir=$HOME/.vim/tmp/undo//
set undofile
set undolevels=5000

" Return to last edit position when opening files
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" tabs -> buffers
map gr gB
map gt gb

" toggle folds with double space
nnoremap <leader><Space> za

" https://ddrscott.github.io/blog/2016/sidescroll/
set sidescroll=1

" open-file-in-gui-text-editor command (e.g. for copy-pasting with mouse for pastebin or whatever)
nmap <leader>m :!mousepad %:p<CR>

" insert and go to empty line below
nmap <leader><CR> $a<CR><ESC>

" bugfixing
set t_ut= " background color when paging

" disable arrow keys to force use of hjkl and make movement adhere to display lines instead of file lines
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" easy moving in and resizing off [v]split windows
nnoremap <Right> <C-w>l
nnoremap <Left> <C-w>h
nnoremap <Up> <C-w>k
nnoremap <Down> <C-w>j

map <A-Left> :vertical resize -2<CR>
map <A-Right> :vertical resize +2<CR>
map <A-Down> :resize +2<CR>
map <A-Up> :resize -2<CR>

" buffergator
let g:buffergator_viewport_split_policy="R"
let g:buffergator_autodismiss_on_select=0
let g:buffergator_autoupdate=1
let g:buffergator_sort_regime="mru"

function StartBuffergator()
   BuffergatorOpen
   wincmd h
endfunction

autocmd VimEnter * call StartBuffergator()

" ctrlp
let g:ctrlp_show_hidden = 1
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|pyc)$',
  \ }
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40



function ZendStyle()
   set tabstop=4 " I like it
endfunction

" search is case sensitive only when it contains uppercase
set ignorecase
set smartcase

" width of a tab, spaces instead of tabs
set tabstop=3 " I like it
set expandtab

" folding (mostly for python)
set foldmethod=indent
set shiftwidth=3 " indentlevel = indent/shiftwidth, so i want this to be the same value as tabstop
set foldignore=  " do not ignore comments

" syntax highlighting
sy on 
colo nightshade
hi Todo none 

" do not override terminal background
hi Folded ctermbg=none 
hi Normal ctermbg=none 

" line numbers
set nu

" interface++
set showcmd
set ruler

" delete everything with backspace
set backspace=eol,start,indent

" move between tabs
map gr gT

" easy moving between :vsplit windows
map <A-Left> :wincmd h<CR>
map <A-Right> :wincmd l<CR>

" open-file-in-gui-text-editor command (e.g. for copy-pasting with mouse for pastebin or whatever)
" the cmap one is annoying because it prevents search for strings that contain 'mp' or open files that contain 'mp'
" nmap mp !mousepad %:p
" cmap mp !gedit %:p 
nmap mp :!gedit %:p<CR>

" toggle folds with space
map <space> za

" bugfixing
set t_ut= " background color when paging

" disable arrow keys to force use of hjkl and make movement adhere to display lines instead of file lines
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" have some skeletons
autocmd BufNewFile *.cpp r ~/.vim/skeletons/cpp | normal 14G
autocmd BufNewFile *.hpp r ~/.vim/skeletons/hpp | normal 15G
autocmd BufNewFile *.sh 0r ~/.vim/skeletons/sh | normal G
autocmd BufNewFile *.py 0r ~/.vim/skeletons/py | normal G

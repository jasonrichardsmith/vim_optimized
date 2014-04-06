execute pathogen#infect()
filetype plugin indent on

autocmd FileType php set omnifunc=phpcomplete#CompletePHP
:imap <c-z> <c-x><c-o>
noremap <C-P> <ESC>:call PhpDocSingle()<CR>
nnoremap <C-P> :call PhpDocSingle()<CR> 
vnoremap <C-P> :call PhpDocRange()<CR> 


set formatoptions+=or

set tabstop=4
set shiftwidth=4
set expandtab

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
set listchars=tab:»·,trail:·
set list
hi SpecialKey ctermbg=red ctermfg=red guibg=red guifg=red

set nobackup
set nowritebackup
set noswapfile
syntax on
colorscheme torte

map <F5> <Esc>:EnableFastPHPFolds<Cr>
map <F6> <Esc>:EnablePHPFolds<Cr>
map <F7> <Esc>:DisablePHPFolds<Cr>
let php_folding=0
source ~/.vim/bundle/phpfolding.vim/plugin/phpfolding.vim
nnoremap <space> za
vnoremap <space> zf

set number

map <F2> :NERDTreeToggle<CR>
au BufRead,BufNewFile *.module set filetype=php

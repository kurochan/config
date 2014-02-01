set nocompatible
set fenc=utf-8
set backspace=indent,eol,start
set number
set cindent
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=0
set smartindent
set smarttab
set smartcase
set scrolloff=3
"set formatoptions+=mM
set hlsearch
set ambiwidth=double
"colorscheme delek
"colorscheme ron
colorscheme koehler

augroup HighlightTrailingSpaces
    autocmd!
    autocmd VimEnter,WinEnter,ColorScheme * highlight TrailingSpaces term=underline guibg=Red ctermbg=Red
    autocmd VimEnter,WinEnter * match TrailingSpaces /\s\+$/
augroup END

"key remap
inoremap {<return> {<return>}<up><end><return>
inoremap if( if()<left>
inoremap if() if()<left>
inoremap for( for(){<return>}<up><end><left><left>
inoremap for() for(){<return>}<up><end><left><left>
"delが使えないとき
"noremap ^H
"noremap! ^H

nnoremap j gj
nnoremap k gk
nnoremap <down> gj
nnoremap <up> gk

nmap <tab> :bn<return>
nmap <s-tab> :bp<return>

" NeoBundle
filetype off
if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim
    call neobundle#rc(expand('~/.vim/bundle/'))
endif
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'bling/vim-airline'
    set laststatus=2
    set t_Co=256
    let g:airline_powerline_fonts = 1
    let g:Powerline_symbols = 'fancy'
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#branch#enabled = 1
    let g:Powerline_symbols = 'compatible'
    let g:airline_left_sep=''
    let g:airline_right_sep=''
    let g:airline#extensions#branch#enabled = 1
NeoBundle 'scrooloose/syntastic'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'cocopon/colorswatch.vim'
NeoBundle 'rhysd/clever-f.vim'
NeoBundle 'YankRing.vim'
NeoBundle 'surround.vim'
filetype plugin indent on
filetype indent on
syntax on

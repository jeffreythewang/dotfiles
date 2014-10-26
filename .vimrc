set nocompatible
filetype off

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set rtp+=~/.vim/bundle/Vundle.vim
set runtimepath^=~/.vim/bundle/ctrlp.vim

call vundle#begin()

"""
Plugin 'tpope/vim-fugitive'
Plugin 'jpalardy/vim-slime'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'

""" CSS Syntax
Plugin 'JulesWang/css.vim'
Plugin 'cakebaker/scss-syntax.vim'

"""
Plugin 'joonty/vdebug.git'

"""
call vundle#end()            " required
filetype plugin indent on    " required

""" Slime
let g:slime_target = "tmux"
let g:slime_python_ipython = 1

""" Nerd Tree
"autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
map <Leader>n <plug>NERDTreeTabsToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Columns & Lines
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nu
set ruler
set statusline=%f

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Turn backup off, since most stuff is in SVN, git et.c anyway...

set nobackup
set nowb
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
autocmd BufWritePre * :%s/\s\+$//e

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Font
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

syntax on
set background=light
" colorscheme desert

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Debug Stuff
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:vdebug_options= {
\}

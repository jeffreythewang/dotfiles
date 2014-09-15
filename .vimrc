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
" => Plugins 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

runtime bundle/vim-pathogen/autoload/pathogen.vim
set runtimepath^=~/.vim/bundle/ctrlp.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"""
Plugin 'tpope/vim-fugitive'


"""
execute pathogen#infect()
call vundle#end()            " required
filetype plugin indent on    " required

""" Nerd Tree
"autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
map <Leader>n <plug>NERDTreeTabsToggle<CR>
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

""" CSS Syntax
Bundle 'JulesWang/css.vim'
Bundle 'cakebaker/scss-syntax.vim'

Bundle 'joonty/vdebug.git'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Debug Stuff
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:vdebug_options= {
\ "port" : 9000,
\ "server" : "",
\ "path_maps" : {"/var/www/apps/tumblr" : "PATH_TO_TUMBLR_APP_LOCAL"}
\}

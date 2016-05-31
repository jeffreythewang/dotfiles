set nocompatible
filetype off

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
    """
    Plugin 'tpope/vim-fugitive'
    Plugin 'jpalardy/vim-slime'
    Plugin 'scrooloose/nerdtree'
    Plugin 'scrooloose/syntastic'
    Plugin 'Valloric/YouCompleteMe'
    Plugin 'amdt/vim-niji'
    Plugin 'kien/ctrlp.vim'
    Plugin 'mileszs/ack.vim'
    Plugin 'myusuf3/numbers.vim'
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'

    """ CSS Syntax
    Plugin 'JulesWang/css.vim'
    Plugin 'cakebaker/scss-syntax.vim'

    """ Verilog Syntax (why would you ever use this?)
    Plugin 'nachumk/systemverilog.vim'

    """ Scala Syntax
    Plugin 'derekwyatt/vim-scala'

    """
    Plugin 'chriskempson/base16-vim'
    Plugin 'joonty/vdebug.git'

    """
call vundle#end()            " required
filetype plugin indent on    " required

""" Airline
set laststatus=2
set noshowmode
set cmdheight=1
let g:airline_theme='term'
"let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

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
set statusline=%f\ -\ FileType:\ %y
set cursorline
set scrolloff=4

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

set tabstop=2
set shiftwidth=2
set softtabstop=2
set backspace=indent,eol,start

set expandtab
set autoindent
set smartindent
autocmd BufWritePre * :%s/\s\+$//e

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Font
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
set background=light
"colorscheme base16-tomorrow

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Mouse
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set mouse=a
set ttymouse=xterm2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Debug Stuff
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:vdebug_options= {
\}

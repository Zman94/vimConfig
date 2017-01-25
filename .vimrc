set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/syntastic' "In file syntax checking
Plugin 'scrooloose/nerdcommenter' "Commenting
Plugin 'valloric/youcompleteme' "Code Completion

Plugin 'bronson/vim-trailing-whitespace' "Trailing whitespace finder

Plugin 'tpope/vim-surround' "Surround for HTML

Plugin 'majutsushi/tagbar' "Tags

Plugin 'flazz/vim-colorschemes' "Color Schemes
Plugin 'kien/rainbow_parentheses.vim' "Parenthesis colors

Plugin 'yggdroot/indentline' "Vertical tab lines
Plugin 'vim-airline/vim-airline' "Status bar
Plugin 'bling/vim-bufferline' "Buffer line

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
"
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_

"set wmh=0
set nocompatible
syntax enable
filetype plugin on

"Search into sub folders
"Display all matching files when we tab complete
set path+=**
set wildmenu


set colorcolumn=100
set number

"Syntastic"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"Indent Line"
let g:indentLine_char = '┆'

"Bufferline
let g:bufferline_echo = 0

"Fix backspace
set backspace=indent,eol,start

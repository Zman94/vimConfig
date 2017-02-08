set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/syntastic' "In file syntax checking
Plugin 'scrooloose/nerdcommenter' "Commenting
Plugin 'scrooloose/nerdtree' "Filesystem
Plugin 'valloric/youcompleteme' "Code Completion
Plugin 'YankRing.vim' "Add an Emacs-esq Yank Ring
Plugin 'tpope/vim-fugitive' "Git integration
Plugin 'kien/ctrlp.vim' "File search

Plugin 'fs111/pydoc.vim' "Python pydoc support
Plugin 'bronson/vim-trailing-whitespace' "Trailing whitespace finder
Plugin 'jiangmiao/auto-pairs' "Auto close braces
Plugin 'sheerun/vim-polyglot' "Syntax highlighting

Plugin 'tpope/vim-surround' "Surround for HTML
Plugin 'majutsushi/tagbar' "Tags

Plugin 'flazz/vim-colorschemes' "Color Schemes
Plugin 'oblitum/rainbow' "Parenthesis colors
Plugin 'hdima/python-syntax' "Python syntax highlighting
Plugin 'tmhedberg/SimpylFold' "Code folding help
Plugin 'vim-scripts/indentpython.vim' "Python indents
Plugin 'nvie/vim-flake8' "Flake8 checker


Plugin 'yggdroot/indentline' "Vertical tab lines
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'} "Status bar some features may slow
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

"Folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za
"Tab Movement
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
"Window Movement
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l
"Tab movement
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

set tabstop=4
set shiftwidth=4
set nocompatible
set hlsearch
set colorcolumn=100
set number
set background=dark
set clipboard=unnamed
let g:golden_ratio_autocommand = 0
let python_highlight_all=1
syntax enable
colorscheme Tomorrow-Night-Eighties
"colorscheme Zenburn

filetype plugin on
"autocmd BufNewFile,BufRead *.py set ft=python

"Search into sub folders
"Display all matching files when we tab complete
set path+=**
set wildmenu

"Syntastic
let g:syntastic_mode_map = {'mode': 'passive', 'active_filetypes': [],'passive_filetypes': []}

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>j  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"Indent Line
let g:indentLine_char = '┆'

"Bufferline
let g:bufferline_echo = 0

"Fix backspace
set backspace=indent,eol,start

"Disable polyglot for python
let g:polyglot_disabled = ['python']

"Rainbow Parenthesis
let g:rainbow_active = 1
"let g:rainbow_guifgs = ['DarkOrange3', 'DarkOrchid3', 'FireBrick']
"let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']

"NerdTree
map <leader>t :NERDTreeToggle<CR>

"Virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

"Flake8
autocmd FileType python map <buffer> <C-;> :call Flake8()<CR>

"Powerline
set guifont=Inconsolata\ for\ Powerline:h13
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set termencoding=utf-8
if has("gui_running")
   let s:uname = system("uname")
   if s:uname == "Zach\n"
      set guifont=Inconsolata\ for\ Powerline:h15
   endif
endif

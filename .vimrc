" vim:set et sw=2
set nocompatible              " be iMproved, required
filetype on                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/syntastic' "In file syntax checking

Plugin 'scrooloose/nerdcommenter' " Commenting
Plugin 'scrooloose/nerdtree'      " Filesystem
Plugin 'jistr/vim-nerdtree-tabs'

"Tag bar
Plugin 'majutsushi/tagbar'

Plugin 'valloric/youcompleteme'   " Code Completion
Plugin 'vim-scripts/YankRing.vim' " Add an Emacs-esq Yank Ring
Plugin 'tpope/vim-fugitive'       " Git integration
Plugin 'airblade/vim-gitgutter'   " Git diff

Plugin 'Shougo/vimproc.vim'       " debugger
Plugin 'idanarye/vim-vebugger'    " debugger

"Plugin 'vim-scripts/Conque-Shell'
"Plugin 'vim-scripts/Conque-GDB'
"Plugin 'joonty/vdebug'

Plugin 'fs111/pydoc.vim'                 " Python pydoc support
Plugin 'bronson/vim-trailing-whitespace' " Trailing whitespace finder
Plugin 'jiangmiao/auto-pairs'            " Auto close braces
Plugin 'sheerun/vim-polyglot'            " Syntax highlighting

Plugin 'tpope/vim-surround'              " Surround for HTML

"Plugin 'kien/rainbow_parentheses.vim'    " Rainbow parenthesis
Plugin 'flazz/vim-colorschemes'          " Color Schemes
Plugin 'tmhedberg/SimpylFold'            " Code folding help
Plugin 'vim-scripts/indentpython.vim'    " Python indents
Plugin 'nvie/vim-flake8'                 " Flake8 checker

Plugin 'yggdroot/indentline'             " Vertical tab lines
Plugin 'godlygeek/tabular'               " line up by regex
Plugin 'bling/vim-bufferline'            " Buffer line

"Snippits
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'

"Repeat command
Plugin 'tpope/vim-repeat'

"Org Mode
"Plugin 'ceb/vim-orgmode'

"Fuzzy file search
Plugin 'ctrlpvim/ctrlp.vim'

"Airline
Plugin 'vim-airline/vim-airline'

"Multiple Cursors
Plugin 'terryma/vim-multiple-cursors'

"Javascript
Plugin 'pangloss/vim-javascript'


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

"Reload file
set autoread

"Folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za
"Tab Movement
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
"Window Movement
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-H> <C-W>h
nnoremap <C-L> <C-W>l
nnoremap <C-w><C-j> <C-W>J
nnoremap <C-w><C-K> <C-W>K
nnoremap <C-w><C-H> <C-W>H
nnoremap <C-w><C-L> <C-W>L
nnoremap <leader>ws <C-W>S
nnoremap <leader>wv <C-W>v

set splitbelow
set splitright
"Buffer movement
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
"Tag movement
nnoremap <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
nnoremap <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
nnoremap te :tabedit 

"set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" New tab
nnoremap <leader>gn :tabedit<cr>
nnoremap gn :tab sball<cr>

" Save and quit tab
nnoremap <leader>wt :w<cr>:bd<cr>

"cscope find callers
if has("cscope")

    """"""""""""" Standard cscope/vim boilerplate

    " use both cscope and ctag for 'ctrl-]', ':ta', and 'vim -t'
    set cscopetag

    " check cscope for definition of a symbol before checking ctags: set to 1
    " if you want the reverse search order.
    set csto=0

    " show msg when any other cscope db added
    set cscopeverbose


    """"""""""""" My cscope/vim key mappings
    "
    " The following maps all invoke one of the following cscope search types:
    "
    "   's'   symbol: find all references to the token under cursor
    "   'g'   global: find global definition(s) of the token under cursor
    "   'c'   calls:  find all calls to the function name under cursor
    "   't'   text:   find all instances of the text under cursor
    "   'e'   egrep:  egrep search for the word under cursor
    "   'f'   file:   open the filename under cursor
    "   'i'   includes: find files that include the filename under cursor
    "   'd'   called: find functions that function under cursor calls
    "

    nnoremap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
    nnoremap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
    nnoremap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
    nnoremap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
    nnoremap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
    nnoremap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
    nnoremap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nnoremap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

    nnoremap <C-@>s :scs find s <C-R>=expand("<cword>")<CR><CR>
    nnoremap <C-@>g :scs find g <C-R>=expand("<cword>")<CR><CR>
    nnoremap <C-@>c :scs find c <C-R>=expand("<cword>")<CR><CR>
    nnoremap <C-@>t :scs find t <C-R>=expand("<cword>")<CR><CR>
    nnoremap <C-@>e :scs find e <C-R>=expand("<cword>")<CR><CR>
    nnoremap <C-@>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
    nnoremap <C-@>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nnoremap <C-@>d :scs find d <C-R>=expand("<cword>")<CR><CR>

    nnoremap <C-@><C-@>s :vert scs find s <C-R>=expand("<cword>")<CR><CR>
    nnoremap <C-@><C-@>g :vert scs find g <C-R>=expand("<cword>")<CR><CR>
    nnoremap <C-@><C-@>c :vert scs find c <C-R>=expand("<cword>")<CR><CR>
    nnoremap <C-@><C-@>t :vert scs find t <C-R>=expand("<cword>")<CR><CR>
    nnoremap <C-@><C-@>e :vert scs find e <C-R>=expand("<cword>")<CR><CR>
    nnoremap <C-@><C-@>f :vert scs find f <C-R>=expand("<cfile>")<CR><CR>
    nnoremap <C-@><C-@>i :vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nnoremap <C-@><C-@>d :vert scs find d <C-R>=expand("<cword>")<CR><CR>

endif

set ignorecase
set nocompatible
set hlsearch
set colorcolumn=100
set number
let maplocalleader="\\"
set background=dark
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>ev :tabedit $MYVIMRC<cr>
inoremap <c-u> <esc>bveU<esc>i
nnoremap <Leader><C-]> <C-w><C-]><C-w>T
iabbrev @@ zgleason94@gmail.com
iabbrev ccop Copyright 2017 Zach Gleason, all rights reservedv
iabbrev ffor for(int i = 0; i < counter; i++)
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
"let g:syntastic_mode_map = {'mode': 'passive', 'active_filetypes': [],'passive_filetypes': []}

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

"YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_server_python_interpreter = '/usr/bin/python2.7'
let g:ycm_server_use_vim_stdout = 0
map <leader>j  :YcmCompleter GoToDefinitionElseDeclaration<CR>
set shortmess+=c

"Indent Line
let g:indentLine_char = '┆'

"Bufferline
let g:bufferline_echo = 0

"Fix backspace
set backspace=indent,eol,start

"Keep lines at bottom under cursor
set scrolloff=10

"Disable polyglot for python
let g:polyglot_disabled = ['python']

"NerdTree
map <leader>t :NERDTreeToggle<CR>
map <leader>n <plug>NERDTreeTabsToggle<CR>

"Tagbar
nmap <leader>b :TagbarToggle<CR>

"Virtualenv support
"py << EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
  "project_base_dir = os.environ['VIRTUAL_ENV']
  "activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  "execfile(activate_this, dict(__file__=activate_this))
"EOF

"Flake8
autocmd FileType python map <buffer> <C-;> :call Flake8()<CR>

"CTRLP
let g:ctrlp_map = '<c-o>'
let g:ctrlp_cmd = 'CtrlP'

"Mouse
set mouse=a

"Clipboard
set clipboard=unnamed

"fugitive git bindings
nnoremap <leader>ga :Git add %:p<CR><CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit -v -q<CR>
nnoremap <leader>gt :Gcommit -v -q %:p<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>ge :Gedit<CR>
nnoremap <leader>gr :Gread<CR>
nnoremap <leader>gw :Gwrite<CR><CR>
nnoremap <leader>gl :silent! Glog<CR>:bot copen<CR>
nnoremap <leader>gm :Gmove<Space>
nnoremap <leader>gb :Git branch<Space>
nnoremap <leader>go :Git checkout<Space>
nnoremap <leader>gps :Gpush<CR>
nnoremap <leader>gp :Gpull<CR>

"git gutter bindings
nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk

nmap <Leader>ha <Plug>GitGutterStageHunk
nmap <Leader>hr mz<Plug>GitGutterUndoHunk'z5k5<C-y>

"vebugger
let g:vebugger_leader='<leader>d'
nmap <leader>ds :VBGstepIn<CR>
nmap <leader>dn :VBGstepOver<CR>
nmap <leader>do :VBGstepOut<CR>
nmap <leader>dc :VBGcontinue<CR>
nmap <leader>de :VBGevalWordUnderCursor<CR>
nmap <leader>db :VBGtoggleBreakpointThisLine<CR>
nmap <leader>dg :VBGstartGDB 
nmap <leader>dt :VBGtoggleTerminalBuffer<CR><C-K><C-w><C-l>
nmap <leader>dw :VBGrawWrite 

let g:ConqueTerm_Color = 2         " 1: strip color after 200 lines, 2: always with color
let g:ConqueTerm_CloseOnEnd = 1    " close conque when program ends running
let g:ConqueTerm_StartMessages = 0 " display warning messages if conqueTerm is configured incorrectly


"Repeat command
nnoremap , @@

"Global save session and restore session
  "save and close all files and save global session
nnoremap <leader>q :mksession! ~/.vim/Session.vim<CR>:wqa<CR>
  "close all files without saving and save global session
nnoremap <leader>www :mksession! ~/.vim/Session.vim<CR>:qa!<CR>

function! RestoreSession()
  if argc() == 0 "vim called without arguments
    execute 'source ~/.vim/Session.vim'
  end
endfunction
autocmd VimEnter * call RestoreSession()

"Airline
let g:airline#extensions#tabline#enabled = 1

"Open header or cpp file
nnoremap <leader>h :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_python_flake8_exe = 'python3 -m flake8'

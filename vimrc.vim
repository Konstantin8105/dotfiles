" --------------------------
" INSTALLATION
" --------------------------
" 1. Install Vundle
" 2. Get theme monokai
" 3. In vim :PluginInstall
" 4. In vim :GoInstallBinaries
" 5. Install python 2.7 for UltiSnip
" ?? install go-tags"

" ===================================================== "
" Init

if has("unix")
  " do stuff under linux and "
  "
elseif has("win32")
	source $VIMRUNTIME/vimrc_example.vim
	source $VIMRUNTIME/mswin.vim
	behave mswin
endif

" ===================================================== "
" set the runtime path to include Vundle and initialize
set nocompatible              " be iMproved, required
filetype off                  " required

if has("unix")
  " do stuff under linux and "
	set rtp+=~/.vim/bundle/Vundle.vim
elseif has("win32")
	set rtp+=$HOME\vimfiles\bundle\Vundle.vim
endif




call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" ===================================================== "
" neocomplete 
Plugin 'Shougo/neocomplete.vim'
let g:neocomplete#enable_at_startup = 1

" ===================================================== "
" Vim Markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
let g:vim_markdown_folding_disabled = 1

" ===================================================== "
" == Javascript 
Plugin 'pangloss/vim-javascript'
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
let g:javascript_conceal_function             = "ƒ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
let g:javascript_conceal_return               = "⇚"
let g:javascript_conceal_undefined            = "¿"
let g:javascript_conceal_NaN                  = "ℕ"
let g:javascript_conceal_prototype            = "¶"
let g:javascript_conceal_static               = "•"
let g:javascript_conceal_super                = "Ω"
let g:javascript_conceal_arrow_function       = "⇒"
let g:javascript_conceal_noarg_arrow_function = "🞅"
let g:javascript_conceal_underscore_arrow_function = "🞅"
"set foldmethod=syntax


" ===================================================== "
" NERDTree
Plugin 'scrooloose/nerdtree'
let g:NERDTreeHighlightCursorline=1
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '|'

" ===================================================== "
" Tagbar
Plugin 'majutsushi/tagbar'
if has("unix")
	":!echo "add ctags"
elseif has("win32")
	" == If you have the space inside way, then it is FAIL
	" == DON`T USE FORDER WITH SPACE
	:let g:tagbar_ctags_bin='Z:\Software\ctags58\ctags.exe'
endif
map <C-F2> :TagbarToggle<CR>

" ===================================================== "
" TComment
Plugin 'tomtom/tcomment_vim'
" Note: see https://github.com/tomtom/tcomment_vim
" gcc - comment/uncomment current line
" gc  - comment/uncomment in visual mode

" ===================================================== "
" Emmet
 Plugin 'mattn/emmet-vim'
 let g:user_emmet_install_global = 0
 autocmd FileType html,css EmmetInstall

" ===================================================== "
" VIM-GO
Plugin 'fatih/vim-go'
Plugin 'fatih/molokai'
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'SirVer/ultisnips'
Plugin 'ctrlpvim/ctrlp.vim'


" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

""""""""""""""""""""""
"      Settings      "
""""""""""""""""""""""
set nocompatible                " Enables us Vim specific features
filetype off                    " Reset filetype detection first ...
filetype plugin indent on       " ... and enable filetype detection
set ttyfast                     " Indicate fast terminal conn for faster redraw
set ttymouse=xterm2             " Indicate terminal type for mouse codes
set ttyscroll=3                 " Speedup scrolling
set laststatus=2                " Show status line always
set encoding=utf-8              " Set default encoding to UTF-8
set autoread                    " Automatically read changed files
set autoindent                  " Enabile Autoindent
set backspace=indent,eol,start  " Makes backspace key more powerful.
set incsearch                   " Shows the match while typing
set hlsearch                    " Highlight found searches
set noerrorbells                " No beeps

""" Like I understood - no need
"set number                      " Show line numbers

set showcmd                     " Show me what I'm typing
set noswapfile                  " Don't use swapfile
set nobackup                    " Don't create annoying backup files
set splitright                  " Vertical windows should be split to right
set splitbelow                  " Horizontal windows should split to bottom
set autowrite                   " Automatically save before :next, :make etc.
set hidden                      " Buffer should still exist if window is closed
set fileformats=unix,dos,mac    " Prefer Unix over Windows over OS 9 formats
set noshowmatch                 " Do not show matching brackets by flickering
set noshowmode                  " We show the mode with airline or lightline
set ignorecase                  " Search case insensitive...
set smartcase                   " ... but not it begins with upper case
set completeopt=menu,menuone    " Show popup menu, even if there is one entry
set pumheight=10                " Completion window max size
set nocursorcolumn              " Do not highlight column (speeds up highlighting)
set nocursorline                " Do not highlight cursor (speeds up highlighting)
set lazyredraw                  " Wait to redraw

" Enable to copy to clipboard for operations like yank, delete, change and put
" http://stackoverflow.com/questions/20186975/vim-mac-how-to-copy-to-clipboard-without-pbcopy
if has('unnamedplus')
  set clipboard^=unnamed
  set clipboard^=unnamedplus
endif

" Colorscheme
syntax enable
set t_Co=256
let g:rehash256 = 1
let g:molokai_original = 1
colorscheme molokai

""""""""""""""""""""""
"      Mappings      "
""""""""""""""""""""""

" Set leader shortcut to a comma ','. By default it's the backslash
let mapleader = ","

" Jump to next error with Ctrl-n and previous error with Ctrl-m. Close the
" quickfix window with <leader>a
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>

" Visual linewise up and down by default (and use gj gk to go quicker)
"noremap <Up> gk
"noremap <Down> gj
"noremap j gj
"noremap k gk

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
"nnoremap n nzzzv
"nnoremap N Nzzzv

" Act like D and C
nnoremap Y y$

" Enter automatically into the files directory
autocmd BufEnter * silent! lcd %:p:h


"""""""""""""""""""""
"      Plugins      "
"""""""""""""""""""""

" vim-go
let g:go_fmt_command = "goimports"
let g:go_autodetect_gopath = 1
let g:go_list_type = "quickfix"
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck', 'gosimple', 'misspell']

let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_generate_tags = 1

" Open :GoDeclsDir with ctrl-g
nmap <C-g> :GoDeclsDir<cr>
imap <C-g> <esc>:<C-u>GoDeclsDir<cr>


augroup go
  autocmd!

  " Show by default 4 spaces for a tab
  autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4

  " :GoBuild and :GoTestCompile
  autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>

  " :GoTest
  autocmd FileType go nmap <leader>t  <Plug>(go-test)

  " :GoRun
  autocmd FileType go nmap <leader>r  <Plug>(go-run)

  " :GoDoc
  autocmd FileType go nmap <Leader>d <Plug>(go-doc)

  " :GoCoverageToggle
  autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)

  " :GoInfo
  autocmd FileType go nmap <Leader>i <Plug>(go-info)

  " :GoMetaLinter
  autocmd FileType go nmap <Leader>l <Plug>(go-metalinter)

  " :GoDef but opens in a vertical split
  autocmd FileType go nmap <Leader>v <Plug>(go-def-vertical)
  " :GoDef but opens in a horizontal split
  autocmd FileType go nmap <Leader>s <Plug>(go-def-split)

  " :GoAlternate  commands :A, :AV, :AS and :AT
  autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
  autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
  autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
  autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')
augroup END

" build_go_files is a custom function that builds or compiles the test file.
" It calls :GoBuild if its a Go file, or :GoTestCompile if it's a test file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#cmd#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

" Gometalinter timeout
let g:go_metalinter_deadline = "20s"

" ===================================================== "
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" ===================================================== "

" --------------------------
" Git
"noremap <Leader>ga :Gwrite<CR>
"noremap <Leader>gc :Gcommit<CR>
"noremap <Leader>gsh :Gpush<CR>
"noremap <Leader>gll :Gpull<CR>
"noremap <Leader>gs :Gstatus<CR>
"noremap <Leader>gb :Gblame<CR>
"noremap <Leader>gd :Gvdiff<CR>
"noremap <Leader>gr :Gremove<CR>
" --------------------------

" --------------------------
" "NERDTREE settings"
if has("unix")
  autocmd vimenter * NERDTree $GOPATH
  " $HOME
  " /home/konstantin/Documents/SVNserver/Secret
elseif has("win32")
  autocmd vimenter * NERDTree Z:\SVNSERVER_CODE\Calculation
endif
:let NERDTreeShowBookmarks=1
nmap <C-F1> :NERDTreeToggle<CR>
" --------------------------

" --------------------------
" Searching
:set ignorecase		" case insensitive
:set incsearch		" show match as search proceeds
:set hlsearch		" search highlighting
" --------------------------

" --------------------------
" Fonts
if has("unix")
	set guifont=Go\ Mono\ 10
"	set guifont=Go\ Mono\ 9
"	set guifont=Go\ Mono\ Bold\ 9

" Try to use Pixel Font
"	set guifont=ProggyCleanTT\ 12
elseif has("win32")
	set guifont=Go_Mono:h9:cDEFAULT
endif
" --------------------------

" --------------------------
" Enable syntax highlighting
:syntax on
" --------------------------


" --------------------------
" Use UTF-8.
:set encoding=utf-8
:set fileencoding=utf-8
" --------------------------


" --------------------------
" Display incomplete commands.
:set showcmd
" --------------------------


" --------------------------
" To save, press ctrl-s.
:nmap <c-s> :w<CR>
:imap <c-s> <Esc>:w<CR>a
" --------------------------

" --------------------------
" Left numbering of lines
":set relativenumber
":set number
" --------------------------
" Smart indentation
:set smartindent
" --------------------------
" Start GUI by default
:gui





" --------------------------
" Tab`s
"nnoremap tn :tabnew<Space>
"
"nnoremap tk :tabnext<CR>
"nnoremap tj :tabprev<CR>
"
"nnoremap th :tabfirst<CR>
"nnoremap tk :tablast<CR>
" --------------------------

" --------------------------

set shiftwidth=4	" indenting is 4 spaces
set tabstop=4		" tabs are at proper location
set laststatus=2	" to display the status line always

" --------------------------
" Highlight Line and Column in Vim
:set cursorline		" # highlight current line
":set cursorcolumn	" # highlight current column
:set colorcolumn=80	" vertical column
" --------------------------

" --------------------------
" Language interface
:source $VIMRUNTIME/delmenu.vim
:source $VIMRUNTIME/menu.vim
:set langmenu=en_US.UTF-8
:let $LANG='en_US.UTF-8'
:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
" --------------------------


" --------------------------
" If in Insert, Replace or Visual mode put a message on the last line.
:set showmode
" --------------------------

" --------------------------
" Yellow vertical borders
:set fillchars+=stlnc:-,vert:\|
:hi vertsplit  guibg=yellow ctermfg=8 guifg=black ctermbg=15
" --------------------------


" --------------------------
"  Formatting statusline
" The advantage of having the status line displayed always
:set laststatus=2
" colors for windows not on focus
:hi statuslineNc guibg=black ctermfg=8 guifg=Yellow ctermbg=15
" colors for windows on focus
:hi statusline   guibg=black ctermfg=8 guifg=Green  ctermbg=15
" default text
set statusline=%t                                " file name
set statusline+=%m                               " file is modify
"set statusline+=[%{strlen(&fenc)?&fenc:'none'}, " file encoding
"set statusline+=%{&ff}]                         " file format
"set statusline+=%y                              " filetype
"set statusline+=%h                              " help file flag
"set statusline+=%m                              " modified flag
set statusline+=%r                               " read only flag
set statusline+=%0*\ Mode:%{toupper(mode())}     " Current mode
set statusline+=\ %=                             " align left
set statusline+=Line:%l/%L "[%p%%]               " line X of Y [percent of file]
set statusline+=\ Col:%c                         " current column
set statusline+=\ Buf:%n                         " Buffer number
"set statusline+=\ [%b][0x%B]\                   " ASCII and byte code under cursor
" --------------------------

" ---- Cursor color ----
highlight Cursor guifg=black guibg=Grey
highlight iCursor guifg=white guibg=Red
"Purple
set guicursor=n-v-c:ver50-Cursor
set guicursor+=i:ver50-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10
set guicursor+=i-ci:ver25


" === Unmap
: map Q <Nop>
" =========

" Backup
" ------
set backup
if has("unix")
	set backupdir=~/temp
	set directory=~/temp
	set undodir=~/temp
elseif has("win32")
	set backupdir=c:\Temp
	set directory=c:\Temp
	set undodir=c:\Temp
endif

"STAAD syntax
autocmd BufRead,BufNewFile *.std set filetype=std


" Hide scrollbar
:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar

" Let`s create a big memory for vim
" Max 2000000
:set maxmempattern=100000 " KBytes

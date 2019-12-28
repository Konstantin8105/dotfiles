" --------------------------
" INSTALLATION
" --------------------------
" 1. Install Vundle
" 3. In vim :PluginInstall
" 4. In vim :GoInstallBinaries
" ?? install go-tags"

" set the runtime path to include Vundle and initialize
set nocompatible              " be iMproved, required
filetype off                  " required

" ===================================================== "
if has("unix")
	set rtp+=~/.vim/bundle/Vundle.vim
elseif has("win32")
	set rtp+=$HOME\vimfiles\bundle\Vundle.vim
endif

call vundle#begin()
" Vundle
Plugin 'VundleVim/Vundle.vim'

" neocomplete 
Plugin 'Shougo/neocomplete.vim'
let g:neocomplete#enable_at_startup = 1

" Ark vim
Plugin 'mileszs/ack.vim'

" NERDTree
Plugin 'scrooloose/nerdtree'
let g:NERDTreeHighlightCursorline =  1
let g:NERDTreeDirArrowExpandable  = '+'
let g:NERDTreeDirArrowCollapsible = '|'

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

" TComment
" Plugin 'tomtom/tcomment_vim'
" Note: see https://github.com/tomtom/tcomment_vim
" gcc - comment/uncomment current line
" gc  - comment/uncomment in visual mode

" Vim-Go
Plugin 'fatih/vim-go'
" Plugin 'AndrewRadev/splitjoin.vim'

" Enable to copy to clipboard for operations like yank, delete, change and put
" http://stackoverflow.com/questions/20186975/vim-mac-how-to-copy-to-clipboard-without-pbcopy
if has('unnamedplus')
  set clipboard^=unnamed
  set clipboard^=unnamedplus
endif

""""""""""""""""""""""
"      Mappings      "
""""""""""""""""""""""

" Set leader shortcut to a comma ','. By default it's the backslash
let mapleader = ","

" Act like D and C
nnoremap Y y$

" Enter automatically into the files directory
autocmd BufEnter * silent! lcd %:p:h


"""""""""""""""""""""
"      Plugins      "
"""""""""""""""""""""

" vim-go
let g:go_autodetect_gopath   = 1
let g:go_version_warning     = 0
let g:go_list_type           = "quickfix"
let g:go_metalinter_enabled  = ['vet', 'golint', 'errcheck', 'staticcheck', 'deadcode' , 'misspell', 'gosec']
let g:go_metalinter_deadline = "20s" " Gometalinter timeout
let g:go_info_mode = 'gocode'

" Gocode for autocompletion
Plugin 'mdempsky/gocode', {'rtp': 'vim/'}


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" ===================================================== "

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
" set nobackup                    " Don't create annoying backup files
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


" ===================================================== "
syntax off
:hi clear

" colorscheme gomin

" ==== Cursor color ====
:hi  Cursor guifg=Black guibg=Blue ctermbg=Blue ctermfg=Black
:hi iCursor guifg=White guibg=Red  ctermbg=Red  ctermfg=Black

" ==== Yellow vertical borders ====
:set fillchars+=stlnc:-,vert:\|
:hi vertsplit  guibg=Yellow ctermfg=DarkGrey guifg=DarkGrey ctermbg=Yellow


" --------------------------
" NERDTREE settings
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
"	set guifont=Go\ Mono\ 10
"	set guifont=Go\ Mono\ 9
"	set guifont=Fira\ Mono\ 10
"	set guifont=ProggyCleanTT\ 12
"	set guifont=Go\ Mono\ Bold\ 11
"	set guifont=Fira\ Mono\ Bold\ 10
	set guifont=Ubuntu\ Mono\ Bold\ 10
elseif has("win32")
	set guifont=Fira_Mono:h9:b
endif
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
" Left numbering of lines
":set relativenumber
:set number
" --------------------------

" --------------------------
" Smart indentation
:set smartindent
" --------------------------

" --------------------------
" Start GUI by default
:gui
" --------------------------

set shiftwidth=4	" indenting is 4 spaces
set tabstop=4		" tabs are at proper location
set laststatus=2	" to display the status line always

" --------------------------
" Highlight Line and Column in Vim
" :set cursorline		" # highlight current line
" :set cursorcolumn     " # highlight current column
:set colorcolumn=80     " vertical column
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
"  Formatting statusline
" The advantage of having the status line displayed always
:set laststatus=2
" colors for windows not on focus
:hi statuslineNc guibg=Black ctermfg=LightYellow guifg=Yellow     ctermbg=Black
" colors for windows on focus
:hi statusline   guibg=Black ctermfg=LightGreen  guifg=LightGreen ctermbg=Black
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
	set undodir  =~/temp
elseif has("win32")
	set backupdir=c:\Temp
	set directory=c:\Temp
	set undodir  =c:\Temp
endif


" Hide scrollbar
:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar

" Let`s create a big memory for vim
" Max 2000000
:set maxmempattern=100000 " KBytes

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Highlight comments
" :highlight MyParenColor      guibg=White
" :match     MyParenColor      /\".*\"\|\`.*\`\|\'.*\'/
" :highlight MyCommentsColor   guibg=Orange
" :2mat      MyCommentsColor   /\/\/.*/
"" highlighting debug information
" :highlight ErrorsColor       guibg=Red
" :3mat      ErrorsColor       /fmt\.Println\|fmt\.Printf\|\/\/.*fmt.*\|TODO.*/
"
" I switch off because it is have a bug
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" main background color
:hi Normal ctermbg=LightGrey  ctermfg=Black guifg=Black      guibg=#FFFF71

" seach highlighting color
:hi Search ctermbg=LightGreen ctermfg=Black guibg=LightGreen guifg=Black

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Comments
"
:nnoremap <silent> gc :call ToggleComment()<CR>
:vnoremap <silent> gc :call ToggleComment()<CR>
let s:comment_map = { 
    \   "c": '\/\/',
    \   "cpp": '\/\/',
    \   "go": '\/\/',
    \   "java": '\/\/',
    \   "javascript": '\/\/',
    \   "lua": '--',
    \   "scala": '\/\/',
    \   "php": '\/\/',
    \   "python": '#',
    \   "ruby": '#',
    \   "rust": '\/\/',
    \   "sh": '#',
    \   "desktop": '#',
    \   "fstab": '#',
    \   "conf": '#',
    \   "profile": '#',
    \   "bashrc": '#',
    \   "bash_profile": '#',
    \   "mail": '>',
    \   "eml": '>',
    \   "bat": 'REM',
    \   "ahk": ';',
    \   "vim": '"',
    \   "tex": '%',
    \ }
function! ToggleComment()
    let comment_leader = '\/\/'
	if has_key(s:comment_map, &filetype)
        let comment_leader = s:comment_map[&filetype]
	end
    if getline('.') =~ "^\\s*" . comment_leader . " " 
        " Uncomment the line
        execute "silent s/^\\(\\s*\\)" . comment_leader . " /\\1/"
    else 
        if getline('.') =~ "^\\s*" . comment_leader
            " Uncomment the line
            execute "silent s/^\\(\\s*\\)" . comment_leader . "/\\1/"
        else
            " Comment the line
            " execute "silent s/^\\(\\s*\\)/\\1" . comment_leader . " /"
			:execute "silent s/^/" . comment_leader . " /"
        end
    end
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Snippets
"
:iabbrev  fn      fmt.Println()<Esc>i
:iabbrev  errn    if err != nil{<CR><Tab><CR>}<Esc>k
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Create menu
"
function! SimpleMenu(options)
	let l:choice_map = {}
	for choice in a:options
		let l:key               = choice[0]
		let l:choice_map[l:key] = choice[2]
		echohl Boolean
		echon l:key . ' '
		echohl None
		echon choice[1]
		echo ''
	endfor
	let l:response = nr2char(getchar())
	redraw!
	if has_key(l:choice_map, l:response)
		call call(l:choice_map[l:response], [])
	endif
endfunction

function! GoVersion()
	execute "!go version"
endfunction
function! GoFilelists()
	execute "!ls -la *.go"
endfunction
function! SayMyName()
	echo 'Hello, Konstantin'
endfunction

function! GoMain()
	:execute "normal ifunc main() {\n\t\n}\<Esc>kA"
endfunction
function! GoDeferRec()
	:execute "normal idefer func(){\n\tif err := recover(); err != nil {\n\t\n}\n}()\<Esc>kkA"
endfunction
function! GoTestFunc()
	:execute "normal ifunc Test(t *testing.T){\n\t\n}\<Esc>kA"
endfunction
function! GoBench()
	:execute "normal ifunc Benchmark(b *testing.B){\n\t\n}\<Esc>kA"
endfunction
function! GoComHign()
	let @/ ="\/\/.*"
	:set hlsearch
endfunction
function! GoDebHign()
	let @/ ="fmt\.Println.*\\|fmt\.Printf.*\\|TODO.*\\|\/\/.*fmt.*"
	:set hlsearch
endfunction

function Menu()
	call SimpleMenu([
		\ ['v', 'Golang version'                           , 'GoVersion'  ],
		\ ['c', 'Go: comments'                             , 'GoComHign'  ],
		\ ['d', 'Go: comments : debug'                     , 'GoDebHign'  ],
		\ ['m', 'Go: func main'                            , 'GoMain'     ],
		\ ['r', 'Go: defer recover'                        , 'GoDeferRec' ],
		\ ['b', 'Go: benchmark'                            , 'GoBench'    ],
		\ ['t', 'Go: test function'                        , 'GoTestFunc' ],
		\ ['l', 'Golang files in present folder'           , 'GoFilelists'],
		\ ['z', 'Say my name '                             , 'SayMyName'  ]
	\ ])
endfunction

:nnoremap <silent> gm :call Menu()<CR>
:vnoremap <silent> gm :call Menu()<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

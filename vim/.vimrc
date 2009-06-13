" .vimrc File.
" Author: Fabio Cevasco <h3rald@h3rald.com>

set backup
if has("win32") || has("win16")
	let osys="windows"
	let &guifont="DejaVu Sans Mono:h9:cANSI"
	set lines=35
	set columns=120
	set backupdir=C:\temp
	set dir=C:\temp
	let $vimrc = $VIM."\\_vimrc"
	let $scrapbook = "D:\\Documents\\Work\\Resources\\Miscellaneous\\scrapbook.textile"
else
	let osys=system('uname -s')
	set guifont=DejaVu\ Sans\ Mono\ 9
	let $vimrc = $VIM."/.vimrc"
	let $scrapbook = $HOME."/scrapbook.textile"
endif

behave xterm
if !has("gui_running")
	set t_Co=256
endif

" make backspace work 'as normal' (non-vi style)
set backspace=2 
set hlsearch
set history=100
set number
set tabstop=2
set shiftwidth=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set laststatus=2
set showcmd
set errorbells
set visualbell
set nowarn
set wrap
set lbr
set bg=dark
set nocompatible      
set cursorline
set cursorcolumn
syntax on            
filetype on        
filetype indent on
filetype plugin on

colorscheme herald

" Key Mappings 
map! <A-'> `
map! <A--> ~
map <A-.> :exe ":edit ". $scrapbook <CR> 
map <A-_> :exe ":source ". $vimrc <CR> 
map <A-,> :exe ":edit ". $vimrc <CR> 

" Filetypes
au BufNewFile,BufRead *.textile,*.txtl set filetype=textile
au BufNewFile,BufRead *.clj,*.clojure set filetype=clojure
au BufNewFile,BufRead *.mxml set filetype=mxml
au BufNewFile,BufRead *.as set filetype=actionscript
au BufNewFile,BufRead *.bbcode,*.bbc set filetype=bbcode
au BufNewFile,BufRead *.io,*.iorc set filetype=io
au BufNewFile,BufRead *.nim set filetype=nimrod

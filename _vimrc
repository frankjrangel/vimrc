set enc=utf-8
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
" set rtp+=~/vimfiles/bundle/Vundle.vim/
" call vundle#begin('%USERPROFILE%/vimfiles/bundle/')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'frankjrangel/conque-shell'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'nathanaelkane/vim-indent-guides'

" Snippets
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" Autocomplete engine
Plugin 'valloric/youcompleteme'

" colors
Plugin 'morhetz/gruvbox'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
syntax on

" colors
colorscheme gruvbox
set background=dark
hi IndentGuidesOdd  guifg=#878787 ctermbg=237
hi IndentGuidesEven guifg=#808080 ctermbg=236
let g:indent_guides_color_change_percent = 50

" font
if has('gui_running')
  set guifont=Fantasque_Sans_Mono:h10:cANSI:qDRAFT
endif

" vim behaviour
let mapleader=" "
set guioptions-=m				"remove menu bar
set guioptions-=T				"remove toolbar
set number						"display line numbers
set backspace=2					"make backspace behave as expected
imap <C-BS> <C-W> 
set tabstop=4 shiftwidth=4		"indentation with tabs TODO configure by file type
autocmd BufEnter * lcd %:p:h	"set working directory to file's directory

" Tags file
set tags=./tags;/

" NerdTree config 
map <silent> <C-t> :NERDTreeToggle<CR>

" Ctrlp config
let g:ctrlp_custom_ignore = 'node_modules'

" ultisnips config
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"



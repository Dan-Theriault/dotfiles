set nocompatible
filetype off   

runtime! debian.vim

set rtp+=/etc/vim/bundle/Vundle.vim
call vundle#begin('/etc/vim/bundle/')
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'ervandew/supertab'
Plugin 'thinca/vim-quickrun'
Plugin 'scrooloose/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'suan/vim-instant-markdown'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end() 
filetype plugin indent on

syntax on
set background=dark
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set hidden		" Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)

" set rtp+=/usr/local/lib/python3.4/dist-packages/powerline/bindings/vim
let g:syntastic_python_python_exec = '/usr/bin/python3'
set hlsearch
set backspace=indent,start
set autoindent
set ruler
set number
set relativenumber
set pastetoggle=<F11>
set shiftwidth=4
set softtabstop=4
set expandtab
set wildmenu
set lazyredraw
set backspace=2
set noshowmode

" Visual Line movements
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

" B goes to the start of the line
nnoremap B ^
" E goes to the end
nnoremap E $
" ?
nnoremap gV '[v']
let mapleader=","

" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

" Vim backups suck. Turn them off
set nobackup
set noswapfile

set laststatus=2

" Theming
" let base16colorspace=256
" set t_Co=256
" set term=screen-256color
" colorscheme onedark
" hi Normal guibg=NONE ctermbg=NONE
" set nomodeline

" Airline
let g:airline_theme='base16_ashes'
let g:airline_powerline_fonts=1
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_detect_modified=1
let g:airline#extensions#whitespace#enabled = 0

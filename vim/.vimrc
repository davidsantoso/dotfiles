set nocompatible  " be iMproved, required
filetype off      " required

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'edkolev/tmuxline.vim'
Plugin 'tComment'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

call vundle#end()
filetype plugin indent on

" Enable syntax highlighting
syntax enable

" Show line numbers
set number

" Highlight current line
set cursorline

" Change to current directory
set autochdir

" Use spaces instead of tabs
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent

" Set color scheme
set t_Co=256
color Tomorrow-Night

" Default to list view for netrw
let g:netrw_liststyle=1

" Airline configuation
set laststatus=2
let g:airline_powerline_fonts=1

" highlight trailing spaces in annoying red
highlight ExtraWhitespace ctermbg=1 guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" configure syntastic syntax checking to check on open as well as save
let g:syntastic_check_on_open=1
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]

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
Plugin 'terryma/vim-multiple-cursors'
Plugin 'fatih/vim-go'
Plugin 'skalnik/vim-vroom'
Plugin 'vim-scripts/ctags.vim'
Plugin 'tmhedberg/matchit'
Plugin 'elixir-lang/vim-elixir'
Plugin 'rhysd/vim-crystal'

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

call vundle#end()
filetype plugin indent on

" Map leader kep to space
let mapleader = " "

" move to last file
nnoremap <leader><leader> <c-^>

" set ctags file location
set tags=tags;/
map <leader>rt :!ctags -R --languages=ruby --exclude=.git --exclude=log . $(bundle list --paths)<cr>

" Enable syntax highlighting
syntax enable

" Set theme
set background=dark
colorscheme base16-custom
let g:airline_theme='base16'
highlight LineNr       ctermbg=237 ctermfg=240
highlight CursorLineNr ctermbg=04 ctermfg=00
highlight CursorLine   ctermbg=237

" Show line numbers
set number

" Highlight current line
set cursorline

" Change to current directory
set autochdir

" Vim shame. But, sometimes I just want it
set mouse=a

" Sync with OS X clipboard
set clipboard=unnamed

" Backspace
set backspace=indent,eol,start

" Use spaces instead of tabs
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent

" Use relative line numbers
:set relativenumber

" Default to list view for netrw
let g:netrw_liststyle=4

" Airline configuation
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline_section_c='%F'

" Highlight trailing spaces in annoying red
highlight ExtraWhitespace ctermbg=1 guibg=red
match ExtraWhitespace /\s\+$/

" Remove any trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" Don't delay exiting modes
set timeoutlen=1000 ttimeoutlen=0

" configure syntastic syntax checking to check on open as well as save
let g:syntastic_check_on_open=1
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]

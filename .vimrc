set nocompatible  " be iMproved, required
filetype off      " required

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'honza/vim-snippets'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tComment'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'fatih/vim-go'
Plugin 'skalnik/vim-vroom'
Plugin 'vim-scripts/ctags.vim'
Plugin 'tmhedberg/matchit'
Plugin 'davidsantoso/vim-elixir'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

call vundle#end()
filetype plugin indent on

" Map leader kep to space
let mapleader=" "
" Use jj for escape mode
inoremap ;; <esc>
" Move to last file
nnoremap <leader><leader> <c-^>
" Enable syntax highlighting
syntax enable
" Set theme
set background=dark
colorscheme base16-custom
highlight LineNr       ctermbg=237 ctermfg=240
highlight CursorLineNr ctermbg=04 ctermfg=00
highlight CursorLine   ctermbg=00
" set ctags file location
set tags=tags;/
" Get rid of the default mode indicator
set noshowmode
" Show line numbers
set number
" Highlight current line
set cursorline
" Change to current directory
set autochdir
" Vim shame. But, sometimes I just want it
set mouse=a
" Sync with OS X clipboard
set clipboard=unnamedplus
" Backspace
set backspace=indent,eol,start
" Use spaces instead of tabs
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent
" Split to the right
set splitright
" Use relative line numbers
set relativenumber
" Show matching [{()}]
set showmatch
" search as characters are entered
set incsearch
" Make changing modes zippy
set timeoutlen=1000 ttimeoutlen=0
" Default to list view for netrw
let g:netrw_liststyle=4
" Hide swp files
let g:netrw_list_hide= '.*\.swp$'
" Airline configuation
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline_section_c='%F'
let g:airline_theme='cool'
" configure syntastic syntax checking to check on open as well as save
let g:syntastic_check_on_open=1
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]
" Highlight trailing spaces in annoying red
highlight ExtraWhitespace ctermbg=1 guibg=red
match ExtraWhitespace /\s\+$/
" Remove any trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e
" Ctrlp Ignore directories
let g:ctrlp_custom_ignore='DS_Store\|node_modules\|vendor\|git\|tmp\|_build'
" Ctrlp start in current directory or nearest git directory
let g:ctrlp_working_path_mode = 'ra'
" Don't clear the screen when closing vim
" set t_ti= t_te=
" NERDtree window size
let NERDTreeWinSize=1
" NERDtree show hidden files by default
let NERDTreeShowHidden=1

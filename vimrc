set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'scrooloose/nerdtree.git'
Plugin 'scrooloose/syntastic'
Plugin 'squarefrog/tomorrow-night.vim'
Plugin 'kien/ctrlp.vim'
" Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'nathanaelkane/vim-indent-guides'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

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
syntax on
let g:airline_powerline_fonts = 1
let g:airline_theme='dark'
set number
set autoindent
set cursorline
set clipboard=unnamed
highlight CursorLine cterm=NONE ctermbg=237 ctermfg=NONE gui=NONE guifg=DarkGrey guibg=NONE
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=237 gui=NONE guifg=DarkGrey guibg=NONE
highlight CursorLineNR cterm=bold ctermbg=237 ctermfg=Grey
set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab

" vim-airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled = 1
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='base16_eighties'

set ts=2 sw=2 et
let g:indent_guides_start_level = 2

"let indent_guides_enable_on_vim_startup = 1
"let g:indent_guides_auto_colors = 1

" set background=dark
" colorscheme base16-tomorrow-night
" colorecheme base16-eighties

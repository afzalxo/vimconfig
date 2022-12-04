set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" set smartindent

inoremap {<cr> {<cr>}<c-o><s-o>
inoremap [<cr> [<cr>]<c-o><s-o>
inoremap (<cr> (<cr>)<c-o><s-o>

call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
Plugin 'VundleVim/Vundle.vim'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'tomtom/tcomment_vim'
Plugin 'itchyny/lightline.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'frazrepo/vim-rainbow'
Plugin 'nvie/vim-flake8'
Plugin 'dense-analysis/ale'

" " Plugin 'Valloric/YouCompleteMe' 
Plugin 'preservim/nerdtree'


set laststatus=2
if !has('gui_running')
      set t_Co=256
  endif

set noshowmode

" let g:airline_theme='minimalist'
" let g:lightline = {'colorscheme': 'solarized',}
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1

if $TERM == "xterm-256color"
    set t_Co=256
endif
call vundle#end()            " required
filetype plugin indent on    " required

let g:rainbow_active = 1
let g:solarized_bold = 0
let g:solarized_contrast = "low"
let g:solarized_termcolors = 256

if has('gui_running')
        set background=light
    else
        set background=dark
endif

set cursorline
set cursorcolumn
hi CursorLine   cterm=NONE ctermbg=237 ctermfg=NONE guibg=darkred guifg=white
hi CursorColumn cterm=NONE ctermbg=235 ctermfg=NONE guibg=darkred guifg=white

syntax on

set t_Co=256

colorscheme atom-dark-256

set foldmethod=indent

set foldlevel=99

nnoremap <space> za

au BufNewFile, BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

let g:ale_linters = {'python': ['flake8']}

set number



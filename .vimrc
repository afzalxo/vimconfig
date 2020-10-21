set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

set number
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

inoremap {<cr> {<cr>}<c-o><s-o>
inoremap [<cr> [<cr>]<c-o><s-o>
inoremap (<cr> (<cr>)<c-o><s-o>

call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
Plugin 'VundleVim/Vundle.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'itchyny/lightline.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'frazrepo/vim-rainbow'
Plugin 'Valloric/YouCompleteMe' 
Plugin 'preservim/nerdtree'

set laststatus=2
if !has('gui_running')
      set t_Co=256
  endif

set noshowmode

let g:airline_theme='minimalist'
let g:lightline = {'colorscheme': 'solarized',}
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1

if $TERM == "xterm-256color"
    set t_Co=256
endif
call vundle#end()            " required
filetype plugin indent on    " required

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

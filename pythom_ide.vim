set nocompatible 		" be iMproved, required
filetype off			" required


syntax on
set number
set guioptions-=r
set guioptions-=L
set guioptions-=b
set tabstop=4 
set shiftwidth=4 
set showtabline=0
set guifont=Monaco:h13
set matchtime=5
set cursorline

" set mapleader and maplocalleader
let g:mapleader = " "
let g:maplocalleader = ","

" remap the esc key
inoremap jk <esc>
vnoremap jk <esc>
			
" edit vimrc file directly
nnoremap <leader>ev :split $MYVIMRC<cr>

" source vimrc file
nnoremap <leader>sv :source $MYVIMRC<cr>

map <F2> :NERDTreeToggle<CR>
let NERDTreeChDirMode=1
let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\~$', '\.pyc$','\.swp$']
let NERDTreeWinSize=25
			
let g:indentLine_enabled = 1
let g:autopep8_disable_show_diff=1

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

let g:skip_defaults_vim = 1

" some configration options for YCM
let g:ycm_server_python_interpreter = '/usr/bin/python'
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_complete_in_comments=1
let g:ycm_collect_identifiers_from_comments_and_strings = 0
let g:ycm_min_num_of_chars_for_completion=2
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_cache_omnifunc=0
let g:ycm_complete_in_strings = 1

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" third part plugin
Plugin 'Valloric/YouCompleteMe'
Plugin 'Lokaltog/vim-powerline'
Plugin 'scrooloose/nerdtree'
Plugin 'Yggdroot/indentLine'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tell-k/vim-autopep8'
Plugin 'scrooloose/nerdcommenter'
Plugin 'altercation/vim-colors-solarized'

call vundle#end() 		" required
filetype plugin indent on	" required
let g:solarized_termcolors=256
set background=dark
colorscheme solarized


" setting for YCM
 autocmd InsertLeave * if pumvisible() == 0|pclose|endif
 inoremap <expr> <Down>     pumvisible() ? '\<C-n>' : '\<Down>'
 inoremap <expr> <Up>       pumvisible() ? '\<C-p>' : '\<Up>'
 inoremap <expr> <PageDown> pumvisible() ? '\<PageDown>\<C-p>\<C-n>' : '\<PageDown>'
 inoremap <expr> <PageUp>   pumvisible() ? '\<PageUp>\<C-p>\<C-n>' : '\<PageUp>'
 nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
 nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
 nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
 nnoremap K :YcmCompleter GetDoc<CR>
 



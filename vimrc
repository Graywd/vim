" enable the pathogen plugin mananger
execute pathogen#infect()
syntax on
filetype plugin indent on

set tabstop=4 
set shiftwidth=4 
set cindent 

" set mapleader and maplocalleader
let g:mapleader = " "
let g:maplocalleader = ","

" remap the esc key
inoremap jk <esc>
vnoremap jk <esc>

" convert current word to uppercase in insert and normal mode
inoremap <c-u> <esc>viwUea
nnoremap <c-u> viwUe

" edit vimrc file directly
nnoremap <leader>ev :split $MYVIMRC<cr>

" source vimrc file
nnoremap <leader>sv :source $MYVIMRC<cr>

" surround the word in double/single quotes in insert and normal mode
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel

" move the cursor to the beginning of the current line
nnoremap <leader>h ^
" move the cursor to the end of the current line
nnoremap <leader>l $

" wrap the text selected in visual mode in quotes
vnoremap <leader>" <esc>a"<esc>`<i"<esc>`>f"

" Common settings ---------------------------------- {{{
augroup com_setting
	autocmd!
	autocmd FileType * nnoremap <leader>w :match ERROR / $/<cr>     " the end space is error
	autocmd FileType * nnoremap <leader>W :match none<cr>   		" the end space is error
" }}}

" Html file settings ------------------------------- {{{
augroup filetype_html
	autocmd!
	autocmd FileType html nnoremap <buffer> <localleader>f Vatzf
augroup END
" }}}

" Vimscript file settings --------------------------- {{{
augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
	autocmd FileType vim setlocal foldlevelstart=-1
augroup END
" }}}

" vim 的一些笔记 ----------------------                    {{{
" foldlevel: 是指折叠的嵌套层次,-1为全部折叠，1的时候打开所有最外层嵌套
" foldlevelstart: 文件打开时，设置折叠的层次
" CTRL-W _ : 多窗口时，把当前窗口放到最大，详细见 :help resize
" CTRL-s :会种终止当前输入字符，冻结，通过CTRL-q可以退出冻结状态
" remap <esc> <nop>: 不要remap esc 键，vim
" 默认的许多配置用到<esc>,容易出现奇怪的问题
" }}}



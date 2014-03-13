" Basic Settings ------------------------- {{{
set nocp

syntax on

set expandtab
set shiftwidth=2
set softtabstop=2
set smartindent
set number
set hlsearch
set incsearch

nmap <space> zz
" }}}

call pathogen#infect()
filetype plugin indent on


":echom ">^.^<"

syntax enable
set background=dark
colorscheme solarized

" Gui options ------------------------------------- {{{
" No mouse in vim. Never. The mouse is evil.
set mouse-=a
" No menu bar
set guioptions-=m
" No toolbar
set guioptions-=T

" Right-hand scrollbar when there is a vertical window
set guioptions-=R
" Left-hand scrollbar
set guioptions-=L
" Left-hand scrollbar when vertically split window
set guioptions-=l
" Bottom horizontal scrollbar
set guioptions-=b
" Right-hand scrollbar
set guioptions-=r

set cursorline
" }}}

" асдфасфасфдасфш
set encoding=utf-8

" map - ddp
inoremap <c-u> <esc>viwUviw<esc>a 

let mapleader = "-"
let maplocalleader = "\\"

nnoremap <leader>ev :split $MYGVIMRC<cr>
nnoremap <leader>sv :source $MYGVIMRC<cr>

iabbrev @@    tanev.tseno@gmail.com
iabbrev ccopy Copyright 2012 Tseno Tanev, NO "rights" reserved.
iabbrev ssig -- <cr>Tseno Tanev <cr>tanev.tseno@gmail.com

nnoremap <leader>ss :w<cr>:source %<cr>
nnoremap <leader>sb :ls<cr>:b<space>
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
nnoremap <leader>pb :execute "rightbelow vsplit" bufname('#')<cr>

" change the working directory to the directory of the file in the current
" buffer
nnoremap <silent> <leader>ct :execute "cd" expand("%:p:h")<cr>

" delete current buffer and show alternative
" in the curret window
" nnoremap <leader>bd :w | b # | bd #<cr>


" nnoremap <leader>pb :execute "echom \"" . bufname('#') . "\""<cr> 

" highlight trailing spaces
highlight MyGroup guibg=darkgreen
nnoremap <silent> <leader>w :match MyGroup /\v\s+$/<cr>        
nnoremap <silent> <leader>W :match None /\v\s+$/<cr>       

" nnoremap <leader>/ /\v
nnoremap <leader>nh :nohlsearch<cr>

nnoremap <silent> <leader>ycl :normal! mq0vg_y`q<cr>
nnoremap <leader>a; :normal! mqA;<esc>`q

vnoremap <leader>v" <esc>`<i"<esc>`>a"<esc>l

inoremap kj <esc>
inoremap <esc> <nop>
inoremap <c-[> <nop>

set laststatus=2
set foldlevelstart=0

" FileType-specific settings -------------------- {{{

augroup filetype_html
  autocmd!
  autocmd FileType html nnoremap <buffer> <localleader>f Vatzf

  autocmd FileType html nnoremap <buffer> <localleader>c I<!-- <esc>A --><esc>
augroup END

augroup filetype_c
  autocmd!
  autocmd FileType c :iabbrev <buffer> main main(int argn, char ** argv) { }<left>
"  autocmd FileType c :setlocal statusline=This\ Is\ %.4f
augroup END

augroup filetype_markdown
  autocmd!
  autocmd FileType markdown :onoremap <buffer> ih :<c-u>execute "normal! ?^\\(==\\+\\)\\\\|\\(--\\+\\)$\r:nohlsearch\rkvg_"<cr>
  autocmd FileType markdown :onoremap <buffer> ah :<c-u>execute "normal! ?^\\(==\\+\\)\\\\|\\(--\\+\\)$\r:nohlsearch\rg_vk0"<cr>
"  autocmd FileType markdown :nnoremap <buffer> <localleader>it :<c-u>execute "normal! ?^\\(a\\|b\\)$\r"<cr>
"  autocmd FileType markdown :nnoremap <buffer> <localleader>ii :<c-u>execute "normal! ?^\\(a\\\\|b\\)$\r"<cr> 
augroup END
" }}}

" Vimscript file settings ---------------------- {{{
augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}


nnoremap <leader>l :ls!<cr>:b<space>
highlight MyGroup guibg=darkgreen

" nnoremap <leader>g :silent execute "grep! -R " . shellscape(expand("<cWORD>")) . " ."<cr>:copen<cr>

" new operator pending mapping 
" that the fuck is this
" nnoremap p i(



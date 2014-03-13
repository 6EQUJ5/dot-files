:set nocp

:syntax on

:set expandtab
:set shiftwidth=2
:set softtabstop=2
:set smartindent

:call pathogen#infect()
:filetype plugin indent on

:set number

:echom ">^.^<"


:let mapleader = "-"
:let maplocalleader = "\\"

:inoremap <leader><c-u> <esc>viwUviw<esc>a

:nnoremap <leader>ev :split $MYVIMRC<cr>
:nnoremap <leader>sv :source $MYVIMRC<cr>


:iabbrev @@   tanev.tseno@gmail.com
:iabbrev ccopy Copyright 2012 Tseno Tanev, all rights reserved.
:iabbrev ssig -- <cr>Tseno Tanev<cr>tanev.tseno@gmail.com


" what a piece of work is man how noble in reason how infinite in faculties in
" form and moving how express and admirable in action how like an angel in
" aprehension how like a god the beauty of the world the paragon of animals
" AND YET to me what is this quintesence of dust  now aint that so HEIN 
"
" and yet to me what is this quintesence of dust  now aint that so HEIN 

:vnoremap <leader>v" <esc>`<i"<esc>`>a"<esc>l



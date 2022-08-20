syntax on 
set ignorecase
set number
set relativenumber
set mouse=a

set clipboard=unnamed
set ruler
set showcmd
set cursorline
set encoding=utf-8
set showmatch
set sw=2
set laststatus=2
set noshowmode
set hlsearch
set incsearch
set ignorecase
set smartcase
call plug#begin()
Plug 'sheerun/vim-polyglot'
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'sirver/ultisnips'
Plug 'tyewang/vimux-jest-test'
Plug 'janko-m/vim-test'
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'easymotion/vim-easymotion'
Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-repeat'
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'
Plug 'mattn/emmet-vim'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'mattn/emmet-vim'
call plug#end()

let mapleader = " "

" Configuraciones 
nnoremap <Leader>t :TestNearest<CR>
nnoremap <Leader>T :TestFile<CR>
nnoremap <Leader>TT :TestSuite<CR>
" mover las terminales
nnoremap <Leader>> 10<C-w>
nnoremap <Leader>< 10<C-W>

" insertar semicolon 
nnoremap <Leader>; $a;<Esc>

" remapeo para guardar y salir 
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>

" comandos recortados
cnoreabbrev tree NERDTreeToggle
cnoreabbrev  blame Gblame
cnoreabbrev  find NERDTreeFind
cnoreabbrev  diff Gdiff

" plugs 
map <Leader>nt :NERDTreeFind<CR>
map <Leader>p :Files<CR>
map <Leader>ag :Ag<CR> 

" for emmet 
let g:user_emmet_mode='n'
let g:user_emmet_leader_key='<Leader>'

nnoremap <silent> <Leader><C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <Leader><C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <Leader><C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <Leader><C-l> :TmuxNavigateRight<cr>

if &filetype == "javascript" || &filetype == "python"
	inoremap <c-space> <C-x><C-u>
else
	inoremap <silent><expr> <c-space> coc#refres()
endif 

call plug#begin('~/.local/share/nvim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'elixir-editors/vim-elixir'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'mattn/emmet-vim'
Plug 'mhartington/oceanic-next'
Plug 'metakirby5/codi.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'slashmili/alchemist.vim'
Plug 'scrooloose/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mileszs/ack.vim'
Plug 'christoomey/vim-tmux-navigator'
call plug#end()

set noswapfile

let mapleader="\<Space>"

nnoremap j gj
nnoremap k gk

nnoremap <Leader>o :only<CR>
nnoremap <Leader>q :q<CR>

nnoremap <Leader>/ <c-w>=
nnoremap <Leader><tab> <c-w>r

" Vimrc save and source
nnoremap <Leader>v :w<CR>:so%<CR>:<backspace>


" very magic searches
cnoremap / /\v
nnoremap / /\v

nnoremap <Leader><Leader> <C-^>

nnoremap <C-p> :GFiles<CR>
nnoremap <C-P> :Files<CR>

nnoremap <Leader>f :NERDTreeToggle<CR>

nnoremap <Leader>a :Ack!<Space>

nnoremap Y y$

nnoremap Q <nop>
nnoremap K <nop>


let g:deoplete#enable_at_startup=1

let g:ale_fixers = {
      \ 'javascript': ['prettier', 'eslint'],
      \}
let g:ale_fix_on_save = 1
let g:ale_sign_column_always = 1
let g:ale_sign_error = '●'

let g:user_emmet_leader_key=','

if (has("termguicolors"))
	set termguicolors
endif

syntax enable
set background=dark
colorscheme gruvbox

let g:airline_powerline_fonts = 1

set tabstop=2
set softtabstop=0
set shiftwidth=2
set expandtab
set smarttab

set nohlsearch

set cursorline
set number
set relativenumber
set guicursor=
set guicursor=i:blinkwait300-blinkon400-blinkoff250

set mouse=a

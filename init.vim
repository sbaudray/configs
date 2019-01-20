call plug#begin('~/.local/share/nvim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neosnippet.vim'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
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
Plug 'scrooloose/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mileszs/ack.vim'
Plug 'christoomey/vim-tmux-navigator'
call plug#end()

let mapleader="\<Space>"

nnoremap j gj
nnoremap k gk

nnoremap / /\v
cnoremap %s %s/\v

nnoremap Y y$

nnoremap Q <nop>

nnoremap <Leader>o :only<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>w :w<CR>

nnoremap <Leader>/ <C-w>=
nnoremap <Leader><Tab> <C-w>r
nnoremap <Leader>_ <C-w>_

nnoremap <Leader>v :w<CR>:so%<CR>:<backspace>

nnoremap <Leader><Leader> <C-^>

nnoremap <C-p> :GFiles<CR>

nnoremap <Leader>f :NERDTreeToggle<CR>

nnoremap <Leader>a :Ack!<Space>

nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

let g:deoplete#enable_at_startup=1
let g:neosnippet#snippets_directory = '~/.config/nvim/snippets'
let g:neosnippet#disable_runtime_snippets = {
      \ '_': 1,
      \}
call deoplete#custom#source('neosnippet', 'rank', 9999)

imap <expr><Tab>
	 \ pumvisible() ? "\<C-n>" :
   \ neosnippet#expandable_or_jumpable() ?
	 \ "\<Plug>(neosnippet_expand_or_jump)" :
   \ "\<Tab>"
inoremap <expr><S-Tab> pumvisible() ? "\<C-p>" : "<S-Tab>"
inoremap <expr><CR> pumvisible() ? "\<C-y>" : "\<CR>"

let g:ale_fixers = {
      \ 'javascript': ['prettier', 'eslint'],
      \}
let g:ale_fix_on_save = 1
let g:ale_sign_column_always = 1
let g:ale_sign_error = '●'

let g:user_emmet_leader_key=','
 
let g:LanguageClient_serverCommands = {
    \ 'elixir': ['~/elixir-ls/rel/language_server.sh']
    \ }
let g:LanguageClient_rootMarkers = {
    \ 'elixir': ['mix.exs'],
    \ }

let g:airline_powerline_fonts = 1

if (has("termguicolors"))
	set termguicolors
endif

syntax enable
set background=dark
colorscheme gruvbox

set noswapfile
set hidden
set tabstop=2
set softtabstop=0
set shiftwidth=2
set expandtab
set smarttab
set nohlsearch
set ignorecase
set smartcase
set cursorline
set number
set relativenumber
set guicursor=
set guicursor=i:blinkwait300-blinkon400-blinkoff250
set mouse=a

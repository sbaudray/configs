call plug#begin('~/.local/share/nvim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'elixir-editors/vim-elixir'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'mattn/emmet-vim'
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'mhartington/oceanic-next'
Plug 'metakirby5/codi.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'slashmili/alchemist.vim'
call plug#end()

set noswapfile

let mapleader="\<Space>"

nnoremap j gj
nnoremap k gk

" close all buffers but the active one
nnoremap <Leader>o :only<CR>
nnoremap <Leader>q :q<CR>

" buffers management
nnoremap <C-h> <c-w>h
nnoremap <C-j> <c-w>j
nnoremap <C-k> <c-w>k
nnoremap <C-l> <c-w>l
nnoremap <Leader>/ <c-w>=
nnoremap <Leader><tab> <c-w>r

" Vimrc save and source
nnoremap <Leader>v :w<CR>:so%<CR>:<backspace>

" clear highlight
nnoremap <Leader><Esc> :noh<CR>:<backspace>

" very magic searches
cnoremap / /\v
nnoremap / /\v

" switch to last buffer
nnoremap <Leader><Leader> <C-^>

noremap <Leader>p "+p
noremap <Leader>y "+y

" fuzzy find non gitignored files
nnoremap <C-p> :GFiles<CR>

" yank to the end of the line
nnoremap Y y$

nnoremap Q <nop>
nnoremap K <nop>

let g:deoplete#enable_at_startup=1

let g:ale_fixers = {
      \ '*': ['remove_trailing_lines', 'trim_whitespace'],
      \ 'javascript': ['prettier', 'eslint'],
      \}
let g:ale_fix_on_save = 1
let g:ale_sign_column_always = 1
let g:ale_sign_error = '●'

let g:user_emmet_leader_key=','

function! s:check_back_space() abort "{{{
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
\ pumvisible() ? "\<C-n>" :
\ <SID>check_back_space() ? "\<TAB>" :
\ deoplete#mappings#manual_complete()


if (has("termguicolors"))
	set termguicolors
endif

syntax enable
set background=dark
colorscheme OceanicNext

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

set cursorline
set number
set relativenumber
set guicursor=
set guicursor=i:blinkwait300-blinkon400-blinkoff250

set ignorecase
set smartcase

set mouse=a

function! GitBranch()
  return fugitive#head()
endfunction

hi User1 guifg=#ffffff guibg=#6699cc
hi User2 guifg=#6699cc guibg=#383838
hi User3 guifg=#ffffff guibg=#383838
hi User4 guifg=#333333 guibg=#383838
hi User5 guifg=#ffffff guibg=#333333

set statusline=
set statusline+=%1*
set statusline+=\ %{GitBranch()}
set statusline+=\ %2*
set statusline+=
set statusline+=%3*
set statusline+=\ %f
set statusline+=%=
set statusline+=%4*\ 
set statusline+=%5*\ %y
set statusline+=\ %{&fileencoding}
set statusline+=\ ℓ
set statusline+=%l
set statusline+=/
set statusline+=%L
set statusline+=\ \|
set statusline+=\ %c

let mapleader="\<Space>"

" close all buffers but the active one
nnoremap <Leader>o :only<CR>
nnoremap <Leader>q :q<CR>

" buffers management
nnoremap <C-h> <c-w>h
nnoremap <C-j> <c-w>j
nnoremap <C-k> <c-w>k
nnoremap <C-l> <c-w>l
nnoremap <C-=> <c-w>=

" Vimrc save and source
nnoremap <Leader>v :w<CR>:so%<CR>:<backspace>

" clear highlight
nnoremap <Leader><Esc> :noh<CR>:<backspace>

" very magic searches
cnoremap / /\v
nnoremap / /\v

nnoremap <Leader><Leader> <C-^>

nnoremap <C-p> :Files<CR>

nnoremap Y y$

nnoremap Q <nop>
nnoremap K <nop>

call plug#begin('~/.local/share/nvim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } 
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'elixir-editors/vim-elixir'
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'mhartington/oceanic-next'
Plug 'metakirby5/codi.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
call plug#end()

let g:deoplete#enable_at_startup=1
let g:ale_elixir_elixir_ls_release = '~/elixir-ls/rel'

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

let g:airline_powerline_fonts = 1

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

set cursorline
set number
set relativenumber
set guicursor=
set guicursor=i:blinkwait300-blinkon400-blinkoff250

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
" file path
set statusline+=\ %f
" right side 
set statusline+=%=
" file type
set statusline+=%4*\ 
set statusline+=%5*\ %y
" file encoding
set statusline+=\ %{&fileencoding}
set statusline+=\ ℓ
set statusline+=%l
set statusline+=/
set statusline+=%L
set statusline+=\ \|
set statusline+=\ %c
set statusline+=\ 

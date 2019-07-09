call plug#begin('~/.local/share/nvim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'Shougo/neosnippet.vim'
Plug 'elixir-editors/vim-elixir'
Plug 'pangloss/vim-javascript'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'mattn/emmet-vim'
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
Plug 'editorconfig/editorconfig-vim'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

let mapleader="\<Space>"
let maplocalleader=','
nmap <silent> <Leader>dd <Plug>(coc-type-definition)
autocmd CursorHold * silent call CocAction('doHover')
nnoremap ; :

nnoremap j gj
nnoremap k gk

nnoremap / /\v
cnoremap %s %s/\v

nnoremap Y y$

nnoremap Q <nop>

nnoremap <Leader>sa gg<S-v>Gy
nnoremap <Leader>b :b<Space>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>x :x<CR>

nnoremap <Leader>/ <C-w>=
nnoremap <Leader><Tab> <C-w>r
nnoremap <Leader>_ <C-w>_

nnoremap <Leader><Leader> <C-^>
nnoremap <C-p> :GFiles<CR>

nnoremap <Leader>z :Goyo<CR>

nnoremap <Leader>f :NERDTreeFind<CR>
nnoremap <Leader>c :NERDTreeToggle<CR>

nnoremap <Leader>lf :Ack<Space>

let g:neosnippet#snippets_directory = '~/.config/nvim/snippets'
let g:neosnippet#disable_runtime_snippets = {
      \ '_': 1,
      \}

nnoremap <S-Tab> <C-w>W
nnoremap <Tab> <C-w>w
imap <expr><Tab>
      \ pumvisible() ? "\<C-n>" :
      \ neosnippet#expandable_or_jumpable() ?
      \ "\<Plug>(neosnippet_expand_or_jump)" :
      \ "\<Tab>"
inoremap <expr><S-Tab> pumvisible() ? "\<C-p>" : "<S-Tab>"
inoremap <expr><CR> pumvisible() ? "\<C-y>" : "\<CR>"

autocmd BufWritePost init.vim so <sfile>

let g:ackprg = 'ag --vimgrep'

let g:user_emmet_leader_key=','

let g:airline_powerline_fonts = 1
let g:airline_section_z = 'ℓ %l/%L : %c'
let g:goyo_width = 120

if (has("termguicolors"))
  set termguicolors
endif

autocmd BufRead,BufNewFile *.ms,*.me,*.mom set filetype=groff
autocmd Filetype groff inoremap á \*[']a
autocmd Filetype groff inoremap Á \*[']A
autocmd Filetype groff inoremap é \*[']e
autocmd Filetype groff inoremap É \*[']E
autocmd Filetype groff inoremap í \*[']i
autocmd Filetype groff inoremap Í \*[']I
autocmd Filetype groff inoremap ó \*[']o
autocmd Filetype groff inoremap Ó \*[']O
autocmd Filetype groff inoremap ú \*[']u
autocmd Filetype groff inoremap Ú \*[']U

syntax enable
set background=dark
colorscheme gruvbox
set updatetime=100
set splitbelow splitright
set autoread
set autowrite
set clipboard^=unnamed,unnamedplus
set noswapfile
set nobackup
set nowritebackup
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
set relativenumber
set guicursor=
set guicursor=i:blinkwait300-blinkon400-blinkoff250
set mouse=a
set mps+=<:>

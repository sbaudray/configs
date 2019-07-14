call plug#begin('~/.local/share/nvim/plugged')
Plug 'tpope/vim-rhubarb'
Plug 'NLKNguyen/papercolor-theme'
Plug 'cocopon/iceberg.vim'
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
Plug 'tpope/vim-unimpaired'
call plug#end()

let mapleader="\<Space>"
let maplocalleader=','
nmap <silent> <Leader>rn <Plug>(coc-rename)
" autocmd CursorHold * silent call CocActionAsync('doHover')
"nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

nnoremap ; :

nnoremap j gj
nnoremap k gk

nnoremap / /\v
cnoremap %s %s/\v

nnoremap Y y$
nnoremap ye ggyG<C-o>

nnoremap Q <nop>

nnoremap <Leader>sa gg<S-v>Gy
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>x :x<CR>

nnoremap <Leader>/ <C-w>=
nnoremap <Leader><Tab> <C-w>r
nnoremap <Leader>_ <C-w>_

nnoremap <Leader><Leader> <C-^>
nnoremap <C-p> :GFiles<CR>
nmap <C-Up> [e
nmap <C-Down> ]e
vmap <C-Up> [egv
vmap <C-Down> ]egv

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
colorscheme iceberg
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

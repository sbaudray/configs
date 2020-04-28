call plug#begin()
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'mileszs/ack.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'elixir-editors/vim-elixir'
Plug 'tpope/vim-surround'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'mattn/emmet-vim'
Plug 'cocopon/iceberg.vim'
Plug 'tpope/vim-commentary'
call plug#end()

let mapleader="\<Space>"
let g:user_emmet_leader_key=','
let g:user_emmet_settings = {
\  'javascript' : {
\      'extends' : 'jsx',
\  },
\}

augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

" Silver searcher
let g:ackprg = 'ag --vimgrep'

nnoremap ; :
nnoremap j gj
nnoremap k gk
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>x :x<CR>
nnoremap <Leader>f :NERDTreeToggle<CR>
nnoremap <Leader>lf :Ack<Space>
nnoremap <Leader><Leader> <C-^>
nnoremap Y y$
nnoremap / /\v
cnoremap %s %s/\v
nnoremap <C-p> :Files<CR>
nnoremap <Leader>yf ggyG<C-o>

" disable comments continuation
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

hi CursorLine cterm=none ctermbg=Black

set noswapfile
set termguicolors
set ignorecase
set smartcase
set number relativenumber
set nohlsearch
set mouse=a
set guicursor=
set splitbelow
set splitright

" Coc 
set hidden
set nobackup
set nowritebackup
set cmdheight=2

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <expr><CR> pumvisible() ? "\<c-y>" : "\<CR>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)
" end of coc

colorscheme iceberg
set background=dark

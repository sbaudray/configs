call plug#begin()
Plug 'tpope/vim-abolish'
Plug 'preservim/nerdtree'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'mattn/emmet-vim'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
" search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
" tmux
Plug 'christoomey/vim-tmux-navigator'
" themes
Plug 'NLKNguyen/papercolor-theme'
Plug 'cocopon/iceberg.vim'
Plug 'fxn/vim-monochrome'
" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" languages
Plug 'elixir-editors/vim-elixir'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'reasonml-editor/vim-reason-plus'
Plug 'leafOfTree/vim-svelte-plugin'
call plug#end()

let mapleader="\<Space>"
let g:user_emmet_leader_key=','
let g:user_emmet_settings = {
\  'javascript' : {
\      'extends' : 'jsx',
\  },
\}

" disable cursorline on unfocused buffer
augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

hi CursorLine cterm=none ctermbg=Black

" markdown preview
let g:mkdp_browser = 'brave-browser'

" Silver searcher
let g:ackprg = 'ag --vimgrep'

" nerdtree
let g:NERDTreeQuitOnOpen=1


" copy to clipboard
noremap <Leader>y "+y 
" paste from clipboard
noremap <Leader>p "+p
nnoremap ; :
nnoremap j gj
nnoremap k gk
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>x :x<CR>
nnoremap <Leader>lf :Ack<Space>
nnoremap <Leader><Leader> <C-^>
nnoremap Y y$
nnoremap <C-p> :Files<CR>
nnoremap gs :Gstatus<CR>
nnoremap gl :diffget //3<CR> 
nnoremap gh :diffget //2<CR>
nnoremap <C-n> :NERDTreeFind<CR>
nnoremap <C-u> :NERDTreeClose<CR>

" disable comments continuation
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" rescript
autocmd BufEnter *.res :setlocal filetype=reason

set noswapfile
set termguicolors
set smartcase
set number relativenumber
set nohls " no search highlight
set mouse=a " enable mouse
set guicursor= " always block cursor
set splitbelow
set splitright
set shiftwidth=2
set backupcopy=yes

colorscheme PaperColor
set background=light

" -- CoC
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

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)
" -- end of CoC

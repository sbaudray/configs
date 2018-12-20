call plug#begin('~/.local/share/nvim/plugged')
Plug 'mhartington/oceanic-next'
Plug 'NLKNguyen/papercolor-theme'
Plug 'metakirby5/codi.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
call plug#end()

if (has("termguicolors"))
	set termguicolors
endif

syntax enable
set background=light
colorscheme PaperColor

let g:airline_powerline_fonts = 1

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

set cursorline
set number
set guicursor=
set guicursor=i:blinkwait300-blinkon400-blinkoff250

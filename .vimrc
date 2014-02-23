execute pathogen#infect()

set nocompatible
set encoding=utf-8
set showcmd
set cursorline
set noswapfile
set nobackup
set nowritebackup
set showmatch
set clipboard+=unnamed
set tags+=.tags
set rnu

filetype plugin indent on
syntax enable

autocmd BufNewFile,BufRead Gemfile setlocal filetype=ruby
au BufRead,BufNewFile *.go set filetype=go

set background=dark
colorscheme Tomorrow-Night

set autoread
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set backspace=indent,eol,start

set hlsearch
set incsearch
set ignorecase
set smartcase
set list
set listchars=trail:.,extends:#,nbsp:.
nnoremap <leader>a <Esc>:Ack!
nnoremap K :Ack! "\b<C-R><C-W>\b"<CR>:cw<CR>

let mapleader=","

if has("statusline") && !&cp
  set laststatus=2
  set statusline=%f\ %m\ %r
  set statusline+=\ %{fugitive#statusline()}
  set statusline+=\ Line:%l/%L[%p%%]
  set statusline+=\ Col:%v
  set statusline+=\ Buf:#%n
endif

nnoremap <leader><leader> <c-^>
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

imap jj <Esc>

let g:CommandTMaxHeight=10
let g:CommandTMinHeight=4

map <leader>gv :CommandTFlush<cr>\|:CommandT app/views<cr>
map <leader>gc :CommandTFlush<cr>\|:CommandT app/controllers<cr>
map <leader>gm :CommandTFlush<cr>\|:CommandT app/models<cr>
map <leader>gh :CommandTFlush<cr>\|:CommandT app/helpers<cr>
map <leader>gl :CommandTFlush<cr>\|:CommandT lib<cr>
map <leader>gs :CommandTFlush<cr>\|:CommandT spec<cr>
map <leader>gf :CommandTFlush<cr>\|:CommandT features<cr>
map <leader>gg :topleft 100 :split Gemfile<cr>
map <leader>f :CommandTFlush<cr>\|:CommandT<cr>

let g:turbux_command_rspec_with_zeus = 'zspec'
let g:turbux_command_rspec = 'be rspec'
let g:ackprg = 'ag --nogroup --nocolor --column'
let g:VimuxUseNearestPane = 1

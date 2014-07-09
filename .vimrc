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

map <leader>f :CtrlP<cr>

map <Leader>T :call RunCurrentSpecFile()<CR>
map <Leader>t :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

let g:rspec_command = "Dispatch bundle exec rspec {spec}"
let g:ackprg = 'ag --nogroup --nocolor --column'

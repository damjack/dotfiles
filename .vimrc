set nocompatible
" We're running Vim, not Vi!
execute pathogen#infect()
execute pathogen#helptags()
" Enable syntax highlighting
syntax on
" Enable filetype detection
filetype on
" Enable filetype-specific indenting
filetype indent on
" Enable filetype-specific plugins
filetype plugin indent on

runtime! config/**/*.vim

" Map the leader key to ,
let mapleader="\<SPACE>"

" Formatting {
  " Show the line numbers on the left side.
  set number 

  " Set 
  set nowrap

  " Render TABs using this spaces 
  set tabstop=2

  " Indentation amount for < and > commands
  set shiftwidth=2

  " Insert spaces when TAB is pressed
  set expandtab

  " Show problematic characters
  set list

  " Tell Vim which characters to show for expanded TABs, trailing whitespace, and end-of-lines
  set listchars=trail:·,precedes:«,extends:»,tab:→\
" }

" Keybindings {
  " Save file
  nnoremap Q :q<CR>
  nnoremap s :w<CR>

  " Copy and paste from system clipboard (Might require xsel/xclip install)
  vmap <Leader>y "+y
  vmap <Leader>d "+d
  nmap <Leader>p "+p
  nmap <Leader>P "+P
  vmap <Leader>p "+p
  vmap <Leader>P "+P
" }

" open buffer into vertical new tab
nnoremap <leader>v :execute "vsplit " . bufname("#")<CR>

" open buffer into horizontal new tab
nnoremap <leader>x :execute "split " . bufname("#")<CR>

set rtp+=/usr/local/opt/fzf
nnoremap <Leader>l :FZF<CR>

set splitbelow
set splitright

" Move beetwen buffer
nmap <BS> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Set color column
set colorcolumn=78

nnoremap <Leader>t :tabedit 

" Remap key fro exit insert mode
:imap §1 <Esc>

" Enable python syntax
let g:python_highlight_all = 1

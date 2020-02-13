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

  " insert tabs on the start of a line according to shiftwidth, not tabstop
  set smarttab

  " highlight search terms
  set hlsearch

  " show search matches as you type
  set incsearch
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

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

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

" Disable autoformat Vim
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0
nmap <Leader>f :Autoformat<CR>

" Enable python syntax
let g:python_highlight_all = 1

" ELM Custom Settings
let g:elm_jump_to_error = 0
let g:elm_make_show_warnings = 0
let g:elm_syntastic_show_warnings = 0
let g:elm_browser_command = ""
let g:elm_detailed_complete = 0
let g:elm_format_autosave = 1
let g:elm_format_fail_silently = 0
let g:elm_setup_keybindings = 1

" NerdTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

let g:ale_linters = {}
let g:ale_linters.javascript = ['prettier']
let g:ale_linters.scss = ['stylelint']
let g:ale_linters.css = ['stylelint']
let g:ale_linters.elixir = ['elixir-ls', 'credo']
let g:ale_linters.ruby = ['rubocop', 'ruby', 'solargraph']
let g:ale_linters.rust = ['rustfmt', 'cargo']
let g:ale_linters.elm = ['elm_ls']

let g:ale_fixers = {'*': ['remove_trailing_lines', 'trim_whitespace']}
let g:ale_fixers.javascript = ['eslint']
let g:ale_fixers.scss = ['stylelint']
let g:ale_fixers.css = ['stylelint']
let g:ale_fixers.elm = ['format']
let g:ale_fixers.ruby = ['rubocop']
let g:ale_ruby_rubocop_executable = 'bundle'
let g:ale_fixers.elixir = ['mix_format']

let g:ale_elixir_elixir_ls_release = '~/.vim/external/elixir-ls/rel'
let g:ale_sign_column_always = 1

let g:ale_elm_ls_use_global = 1
let g:ale_elm_ls_executable = "/Users/damjack/.asdf/shims/elm-language-server"
let g:ale_elm_ls_elm_analyse_trigger = 'change'
let g:ale_elm_ls_elm_path = "/Users/damjack/.asdf/shims/elm"
let g:ale_elm_ls_elm_format_path = "/Users/damjack/.asdf/shims/elm-format"
let g:ale_elm_ls_elm_test_path = "/Users/damjack/.asdf/shims/elm-test"

" Ale
nnoremap <Leader>g :ALEGoToDefinition<Return>
nnoremap <Leader>ggt :ALEGoToDefinitionInTab<Return>
nnoremap <Leader>gt :ALEGoToTypeDefinition<Return>
nnoremap <Leader>gtt :ALEGoToTypeDefinitionInTab<Return>
nnoremap df :ALEFix<cr>

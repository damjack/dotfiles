#!/usr/bin/env bash

echo "Starting Vim..."

# Check for Homebrew, install if we don't have it
if test ! $(which vim); then
  echo "You run after brew..."
  exit 1
fi

# Add pathogen and bundle packages
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
echo "Pathogen added to the system"

# Add plugin to bundle dir
git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go # GO
git clone https://github.com/elixir-lang/vim-elixir.git ~/.vim/bundle/vim-elixir # ELIXIR
git clone https://github.com/junegunn/fzf.vim.git ~/.vim/bundle/fzf.vim # FZF
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree # NERDTREE
git clone https://github.com/moll/vim-node.git ~/.vim/bundle/node # NODE
git clone https://github.com/vim-python/python-syntax.git ~/.vim/bundle/python-syntax # PYTHON
git clone https://github.com/kchmck/vim-coffee-script.git ~/.vim/bundle/vim-coffee-script # COFFEE SCRIPT
git clone https://github.com/pangloss/vim-javascript.git ~/.vim/bundle/vim-javascript # JAVASCRIPT
git clone https://github.com/jelera/vim-javascript-syntax.git ~/.vim/bundle/vim-javascript-syntax # JAVASCRIPT SYNTAX
git clone https://github.com/maksimr/vim-jsbeautify.git ~/.vim/bundle/vim-jsbeautify # JAVASCRIPT BEAUTIFIER
git clone https://github.com/vim-ruby/vim-ruby.git ~/.vim/bundle/vim-ruby # RUBY
git clone https://github.com/tpope/vim-sensible.git ~/.vim/bundle/vim-sensible # SENSIBLE
git clone https://github.com/slim-template/vim-slim.git ~/.vim/bundle/vim-slim # SLIM
git clone https://github.com/leafgarland/typescript-vim.git ~/.vim/bundle/typescript-vim # TYPESCRIPT
git clone https://github.com/dense-analysis/ale.git ~/.vim/bundle/ale # ALE
git clone https://github.com/ElmCast/elm-vim.git ~/.vim/bundle/elm-vim # ELM
git clone https://github.com/vim-syntastic/syntastic.git ~/.vim/bundle/syntastic # SYNTASTIC
git clone git@github.com:vim-airline/vim-airline.git ~/.vim/bundle/vim-airline # AIRLINE
git clone git@github.com:Chiel92/vim-autoformat.git ~/.vim/bundle/vim-autoformat # AUTOFORMAT
git clone git@github.com:tpope/vim-fugitive.git ~/.vim/bundle/vim-fugitive # FUGITIVE
git clone https://github.com/prettier/vim-prettier ~/.vim/bundle/vim-prettier $ # PRETTIER

echo "All plugins added correctly"

cp .vimrc ~/.vimrc

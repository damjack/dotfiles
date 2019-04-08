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
git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go
git clone https://github.com/elixir-lang/vim-elixir.git ~/.vim/bundle/vim-elixir
git clone https://github.com/junegunn/fzf.vim.git ~/.vim/bundle/fzf.vim
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
git clone https://github.com/moll/vim-node.git ~/.vim/bundle/node
git clone https://github.com/vim-python/python-syntax.git ~/.vim/bundle/python-syntax
git clone https://github.com/kchmck/vim-coffee-script.git ~/.vim/bundle/vim-coffee-script
git clone https://github.com/pangloss/vim-javascript.git ~/.vim/bundle/vim-javascript
git clone https://github.com/jelera/vim-javascript-syntax.git ~/.vim/bundle/vim-javascript-syntax
git clone https://github.com/maksimr/vim-jsbeautify.git ~/.vim/bundle/vim-jsbeautify
git clone https://github.com/vim-ruby/vim-ruby.git ~/.vim/bundle/vim-ruby
git clone https://github.com/tpope/vim-sensible.git ~/.vim/bundle/vim-sensible
git clone https://github.com/slim-template/vim-slim.git ~/.vim/bundle/vim-slim

echo "All plugins added correctly"

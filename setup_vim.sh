mkdir -p ~/.vim/pack/vendor/start
cd ~/.vim/pack/vendor/start

git clone https://github.com/scrooloose/nerdtree
git clone https://github.com/dsawardekar/portkey.git
git clone https://github.com/ntpeters/vim-better-whitespace
git clone https://github.com/nathanaelkane/vim-indent-guides
git clone https://github.com/bling/vim-bufferline
git clone https://github.com/moll/vim-bbye.git

git clone https://github.com/jelera/vim-javascript-syntax.git
git clone https://github.com/hoopes/JavaScript-Indent.git
cd JavaScript-Indent
git checkout no-echo
cd ..

git clone https://github.com/hell03610/vim-evolution.git
git clone https://github.com/hell03610/vim-ember-hbs.git
git clone https://github.com/thiagoalessio/rainbow_levels.vim.git
git clone https://github.com/kien/ctrlp.vim.git

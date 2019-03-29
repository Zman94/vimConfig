git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#python/virtualenv and ycm compilation
sudo apt-get install python-setuptools python-dev build-essential \
	python3-setuptools python-pip python3-pip \
	libncurses5-dev libgnome2-dev libgnomeui-dev \
    libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
    libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev \
    python3-dev ruby-dev lua5.1 lua5.1-dev libperl-dev git \
	cmake
sudo pip3 install --upgrade pip
sudo pip install --upgrade pip
sudo pip install virtualenv
sudo pip3 install virtualenv

git clone git://github.com/kennethreitz/autoenv.git ~/.autoenv
echo 'source ~/.autoenv/activate.sh' >> ~/.bashrc

#ycm compilation
sudo apt-get remove vim vim-runtime gvim \
	vim-tiny vim-common vim-gui-common vim-nox
sudo apt-get install neovim
pip install --user --upgrade pynvim
pip3 install --user --upgrade pynvim

cd ~

cd ~/.vim/bundle/YouCompleteMe
./install.py --all

curl -o ~/.git-prompt.sh       -OL cdn.learnenough.com/git-prompt.sh
curl -o ~/.git-completion.bash -OL cdn.learnenough.com/git-completion.bash

git config --global alias.co checkout
git config --global alias.st status
git config --global alias.ci commit
git config --global alias.br branch

ln .vimrc ~/.vimrc

#oh my zsh
sudo apt install zsh
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
ln ./.zshrc ~/.zshrc

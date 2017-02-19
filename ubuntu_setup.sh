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

cd ~
git clone https://github.com/vim/vim.git
cd vim
./configure --with-features=huge \
	--enable-multibyte \
	--enable-rubyinterp=yes \
	--enable-pythoninterp=yes \
	--with-python-config-dir=/usr/lib/python2.7/config \
	--enable-python3interp=yes \
	--with-python3-config-dir=/usr/lib/python3.5/config \
	--enable-perlinterp=yes \
	--enable-luainterp=yes \
	--enable-gui=gtk2 --enable-cscope --prefix=/usr
make VIMRUNTIMEDIR=/usr/share/vim/vim80
cd ~/vim
sudo make install
sudo update-alternatives --install /usr/bin/editor editor /usr/bin/vim 1
sudo update-alternatives --set editor /usr/bin/vim
sudo update-alternatives --install /usr/bin/vi vi /usr/bin/vim 1
sudo update-alternatives --set vi /usr/bin/vim

cd ~/.vim/bundle/YouCompleteMe
./install.py --all

curl -o ~/.git-prompt.sh       -OL cdn.learnenough.com/git-prompt.sh
curl -o ~/.git-completion.bash -OL cdn.learnenough.com/git-completion.bash

git config --global alias.co checkout
git config --global alias.st status
git config --global alias.ci commit

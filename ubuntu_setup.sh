git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

sudo apt-get install python-setuptools python-dev build-essential python3-setuptools python-pip python3-pip
sudo pip3 install --upgrade pip
sudo pip install --upgrade pip
sudo pip install virtualenv
sudo pip3 install virtualenv

git clone git://github.com/kennethreitz/autoenv.git ~/.autoenv
echo 'source ~/.autoenv/activate.sh' >> ~/.bashrc

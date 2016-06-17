==================
VIM Configurations
==================

Aaron LI

Created: 2014-11-12

**WARNING:**
I just switched to use the great [``spf13-vim``](https://github.com/spf13/spf13-vim),
which makes me have only to maintain a very minimal ``.vimrc.local``.


Track vim configurations with Git
=================================

A. Initialize git
-----------------
```
$ mv ~/.vimrc ~/.vim/vimrc
$ ln -s ~/.vim/vimrc ~/.vimrc
$ cd ~/.vim
$ git init
$ git add .
$ git commit -m "Initial commit."
```

B. Install plugins as submodules
--------------------------------
```
$ cd ~/.vim && mkdir bundle
$ git submodule add https://github.com/tpope/vim-pathogen.git bundle/vim-pathogen
$ git add .
$ git commit -m "Installed vim-pathogen bundle as a submodule."
```

C. Install the vim configurations on another machine
----------------------------------------------------
```
$ git clone <dotvim.git> ~/.vim
$ ln -s ~/.vim/vimrc ~/.vimrc
$ cd ~/.vim
$ git submodule init
$ git submodule update
```

D. Upgrade a plugin bundle
--------------------------
```
$ cd ~/.vim/bundle/vim-pathogen
$ git pull origin master
```

E. Upgrade all plugin bundles
-----------------------------
```
$ cd ~/.vim/bundle
$ git submodule foreach git pull origin master
```


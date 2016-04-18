.vim
====
My Vim setup.
Instructions: (either upgrade to 7.4 and use ~/.vim/vimrc) or follow to fix the path after cloning:
1. git clone directory into home directory (folder should already be named .vim)
2. soft link new vimrc to default vimrc location (ln -s ~/.vim/vimrc ~/.vimrc)
3. first time running vim, an error will occur and the theme colors will be ugly. run :PluginInstall for Vundle (or install it if its not included)
4. re-run vim and no errors should happen.

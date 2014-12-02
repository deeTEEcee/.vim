set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/vimproc.vim/autoload/*,~/.vim/bundle/vimproc.vim/plugin/*
call vundle#begin()
"General
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-fugitive'
Plugin 'xolox/vim-session'
  Plugin 'xolox/vim-misc' "needed for vim-session
Plugin 'nelstrom/vim-textobj-rubyblock'
  Plugin 'kana/vim-textobj-user' "needed for rubyblock
Plugin 'tpope/vim-surround'

"Visuals and Info
Plugin 'altercation/vim-colors-solarized'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'bling/vim-airline'
Plugin 'fweep/vim-tabber' " tab labeling for use with airline

"File/Directory Searching and Code Browsing
Plugin 'https://github.com/scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'ggreer/the_silver_searcher' "ag for commandline
Plugin 'rking/ag.vim' "ag for vim
Plugin 'ervandew/supertab'
Plugin 'Lokaltog/vim-easymotion'

"Rails
Plugin 'https://github.com/tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-endwise'

call vundle#end()            " required
filetype plugin indent on    " required


" after loading plugins, load these
for f in split(glob('~/.vim/setup/*'), '\n')
  exe 'source' f
endfor

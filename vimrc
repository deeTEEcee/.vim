set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/vimproc.vim/autoload/*,~/.vim/bundle/vimproc.vim/plugin/*
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
"Plugin 'Shougo/unite.vim'
"Plugin 'Shougo/vimproc.vim'
Plugin 'scrooloose/syntastic'
Plugin 'https://github.com/scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
"Plugin 'Lokaltog/powerline'
Plugin 'https://github.com/tpope/vim-rails'
Plugin 'ggreer/the_silver_searcher' "ag for commandline
Plugin 'rking/ag.vim' "ag for vim

call vundle#end()            " required
filetype plugin indent on    " required


" after loading plugins, load these
for f in split(glob('~/.vim/setup/*'), '\n')
  exe 'source' f
endfor

berp

set nocompatible
set nomodeline
filetype off
let $VIMHOME=expand('<sfile>:p:h')

set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/vimproc.vim/autoload/*,~/.vim/bundle/vimproc.vim/plugin/*
call vundle#begin()
"General
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'xolox/vim-session'
  Plugin 'xolox/vim-misc' "needed for vim-session
Plugin 'nelstrom/vim-textobj-rubyblock'
  Plugin 'kana/vim-textobj-user' "needed for rubyblock
  Plugin 'vim-scripts/matchit.zip'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-repeat' " see http://vimcasts.org/episodes/creating-repeatable-mappings-with-repeat-vim/ if confused
Plugin 'tpope/vim-commentary' " test this out and get rid of NERDCommentator
Plugin 'vim-scripts/Tabmerge'

"TODO
"Plugin 'godlygeek/tabular'

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
Plugin 'mileszs/ack.vim'
Plugin 'henrik/vim-qargs' "for commands on quickfix list
Plugin 'ervandew/supertab'
Plugin 'Lokaltog/vim-easymotion'

"Rails
Plugin 'https://github.com/tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-endwise'

"Unite
Plugin 'Shougo/unite.vim'
Plugin 'tsukkee/unite-tag'

call vundle#end()            " required
filetype plugin indent on    " required


" after loading plugins, load these
for f in split(glob('~/.vim/setup/*'), '\n')
  exe 'source' f
endfor

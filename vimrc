" ----------
" Vim Config
" ----------
"
"
" How this works:
"
" This file is minimal.  Most of the vim settings and initialization is in
" several files in .vim/init.  This makes it easier to find things and to
" merge between branches and repos.
"
" Please do not add configuration to this file, unless it *really* needs to
" come first or last, like Vundle and sourcing the machine-local config.
" Instead, add it to one of the files in .vim/init, or create a new one.

set nocompatible               " be iMproved
filetype off                   " required!

let need_to_install_plugins=0
if empty(system("grep lazy_load ~/.vim/bundle/Vundle.vim/autoload/vundle.vim"))
  echoerr "Vundle plugins are not installed. Please run ~/.vim/bin/install"
else
  set rtp+=~/.vim/bundle/Vundle.vim

  call vundle#begin()

  Plugin 'VundleVim/Vundle.vim'

  "
  " Colorschemes
  "
  Plugin 'chriskempson/vim-tomorrow-theme'

  "
  " Ruby / Rails
  "
  Plugin 'vim-ruby/vim-ruby'
  Plugin 'tpope/vim-rails'
  Plugin 'tpope/vim-endwise'
  Plugin 'ecomba/vim-ruby-refactoring'
  Plugin 'tpope/vim-rake'
  Plugin 'benmills/vimux'
  Plugin 'janko-m/vim-test'

  "
  " General Editing
  "
  Plugin 'tpope/vim-repeat'
  Plugin 'tpope/vim-surround'
  Plugin 'scrooloose/nerdcommenter'
  Plugin 'tpope/vim-unimpaired'
  " Plugin 'scrooloose/syntastic'
  Plugin 'itchyny/lightline.vim'
  Plugin 'matt-royal/diffthese'
  Plugin 'regreplop.vim' " This is for ctrl-K replacing
  Plugin 'Peeja/vim-cdo'
  Plugin 'tpope/vim-projectionist' " this is for :AV
  Plugin 'MarcWeber/vim-addon-mw-utils'

  "
  " Searching
  "
  Plugin 'tpope/vim-abolish'
  Plugin 'henrik/vim-qargs'
  Plugin 'kien/ctrlp.vim'
  Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plugin 'junegunn/fzf.vim'

  Plugin 'jremmen/vim-ripgrep'
  Plugin 'google/vim-searchindex'
  Plugin 'nixprime/cpsm', { 'do': 'env PY3=OFF ./install.sh' }

  "
  " Navigation
  "
  Plugin 'scrooloose/nerdtree'

  "
  " Languages
  "
  Plugin 'pangloss/vim-javascript'
  Plugin 'plasticboy/vim-markdown'
  Plugin 'nono/vim-handlebars'
  Plugin 'kchmck/vim-coffee-script'
  Plugin 'juvenn/mustache.vim'
  Plugin 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
  Plugin 'elzr/vim-json'

  "
  " Development Tool Integration
  "
  Plugin 'tpope/vim-fugitive'
  Plugin 'tpope/vim-rhubarb'
  Plugin 'airblade/vim-gitgutter'
  Plugin 'pivotal/tmux-config'
  Plugin 'sjl/vitality.vim'
  Plugin 'tmux-plugins/vim-tmux-focus-events'

  call vundle#end()

  filetype plugin indent on

  syntax on

  runtime! init/**.vim

  if filereadable($HOME . "/.vimrc.local")
    source ~/.vimrc.local
  endif
endif

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
  Plugin 'chriskempson/base16-vim'
  Plugin 'altercation/vim-colors-solarized'
  Plugin 'chriskempson/vim-tomorrow-theme'
  Plugin 'flazz/vim-colorschemes'

  "
  " Ruby / Rails
  "
  Plugin 'tpope/vim-rails'
  Plugin 'tpope/vim-endwise'
  Plugin 'ecomba/vim-ruby-refactoring'
  Plugin 'nelstrom/vim-textobj-rubyblock'
  Plugin 'jgdavey/vim-blockle'
  Plugin 'tpope/vim-rake'
  Plugin 'benmills/vimux'
  Plugin 'janko-m/vim-test'

  "
  " General Editing
  "
  Plugin 'tpope/vim-repeat'
  Plugin 'tpope/vim-surround'
  Plugin 'scrooloose/nerdcommenter'
  Plugin 'kana/vim-textobj-user'
  Plugin 'Julian/vim-textobj-variable-segment'
  Plugin 'kana/vim-textobj-line'
  Plugin 'thinca/vim-textobj-between'
  Plugin 'tpope/vim-unimpaired'
  Plugin 'godlygeek/tabular'
  Plugin 'scrooloose/syntastic'
  Plugin 'vim-airline/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'
  Plugin 'ervandew/supertab'
  Plugin 'nertzy/j-split'
  Plugin 'matt-royal/diffthese'
  Plugin 'camelcasemotion'
  Plugin 'regreplop.vim'
  Plugin 'Peeja/vim-cdo'
  Plugin 'garbas/vim-snipmate'
  Plugin 'honza/vim-snippets'
  Plugin 'tpope/vim-projectionist' " this is for :AV
  Plugin 'kien/rainbow_parentheses.vim'
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
  Plugin 'vim-ruby/vim-ruby'
  Plugin 'pangloss/vim-javascript'
  Plugin 'plasticboy/vim-markdown'
  Plugin 'shime/vim-livedown'
  Plugin 'nono/vim-handlebars'
  Plugin 'kchmck/vim-coffee-script'
  Plugin 'tpope/vim-haml'
  Plugin 'juvenn/mustache.vim'
  Plugin 'fatih/vim-go'
  Plugin 'chrisbra/csv.vim'
  Plugin 'elzr/vim-json'
  Plugin 'briancollins/vim-jst'
  Plugin 'mxw/vim-jsx'
  Plugin 'leafgarland/typescript-vim'
  Plugin 'digitaltoad/vim-pug'
  Plugin 'elixir-lang/vim-elixir'

  "
  " Development Tool Integration
  "
  Plugin 'tpope/vim-fugitive'
  Plugin 'tpope/vim-rhubarb'
  Plugin 'airblade/vim-gitgutter'
  Plugin 'pivotal/tmux-config'
  Plugin 'tpope/vim-dispatch'
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

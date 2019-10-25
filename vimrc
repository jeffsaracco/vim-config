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

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

"
" Colorschemes
"
Plug 'chriskempson/vim-tomorrow-theme'

"
" Ruby / Rails
"
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-endwise'
Plug 'ecomba/vim-ruby-refactoring'
Plug 'tpope/vim-rake'
Plug 'benmills/vimux'
Plug 'janko-m/vim-test'
"
" General Editing
"
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-unimpaired'
Plug 'itchyny/lightline.vim'
Plug 'matt-royal/diffthese'
Plug 'Peeja/vim-cdo'
Plug 'tpope/vim-projectionist' " this is for :AV
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'stefandtw/quickfix-reflector.vim'

"
" Searching
"
Plug 'tpope/vim-abolish'
Plug 'henrik/vim-qargs'
" Plug 'kien/ctrlp.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'pbogut/fzf-mru.vim'

Plug 'jremmen/vim-ripgrep'
Plug 'google/vim-searchindex'
Plug 'nixprime/cpsm', { 'do': 'env PY3=OFF ./install.sh' }

"
" Navigation
"
Plug 'scrooloose/nerdtree'

"
" Languages
"
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
Plug 'nono/vim-handlebars'
Plug 'kchmck/vim-coffee-script'
Plug 'juvenn/mustache.vim'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'elzr/vim-json'

Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'

"
" Development Tool Integration
"
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'airblade/vim-gitgutter'
Plug 'pivotal/tmux-config'
Plug 'sjl/vitality.vim'
Plug 'tmux-plugins/vim-tmux-focus-events'
call plug#end()

syntax on

runtime! init/**.vim

if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif


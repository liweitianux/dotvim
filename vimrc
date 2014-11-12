""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"         _                                                                "
" __    _(_)_ __ ___  _ __ ___                                             "
" \ \  / / | '_ ` _ \| '__/ __|                                            "
"  \ \/ /| | | | | | | | | (__                                             "
"   \__/ |_|_| |_| |_|_|  \___|                                            "
"                                                                          "
" Weitian LI <liweitianux@gmail.com>                                       "
" Created: 2014/11/12                                                      "
" Updated: 2014/11/12                                                      "
"                                                                          "
"                                                                          "
"                                                                          "
"                                                                          "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible                " above all, be iMproved

"" test {{{
set runtimepath=~/dotfiles/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after
"" test }}}

"" tpope/vim-pathogen {{{
" put pathogen.vim in a submodule like other plugins
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
filetype plugin indent on
"" pathogen }}}

"" general settings {{{
let mapleader=","               " change the mapleader
"" general }}}


" vim: set ts=8 sw=4 tw=78 fenc= ft=vim:

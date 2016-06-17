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
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible                " above all, be iMproved

"" TEST {{{
set runtimepath=~/dotfiles/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after
"" test }}}

"" tpope/vim-pathogen {{{
" put pathogen.vim in a submodule like other plugins
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
filetype plugin indent on
"" pathogen }}}

"" General settings {{{
let mapleader=","               " change the mapleader

set encoding=utf-8
set showmode
set showmatch
set number
set ruler                       " show the cursor position
set scrolloff=4                 " lines off the edges of screen when scrolling
set cursorline                  " highlight the line of the cursor
set tabstop=8
set softtabstop=4               " hitting <BS>, pretend like a tab is removed
set shiftwidth=4
set shiftround                  " shift to certain columns, not just by n spaces
set expandtab
set ignorecase
set mouse=a
"" General }}}

"" Vim Files & Directories {{{
" Backup file
set backup                      " keep backup files
set backupdir=~/.vim/backup,.,~/tmp,~/

" Swap files
set noswapfile                  " do not keep swap file
set directory=~/.vim/tmp,.,~/tmp,/tmp

" Persistent undo
if has('persistent_undo')
    set undofile                " keep persistent undo files
    set undodir=~/.vim/undo,.,~/tmp,~/
endif
"" Files & Directories }}}

"" Folding rules {{{
set foldenable
set foldcolumn=2                " add a fold column
set foldmethod=marker           " detect 'triple-{' style fold markers
set foldopen=block,hor,insert,jump,mark,percent,quickfix,search,tag,undo
                                " commands trigger auto-unfold
nnoremap <Space> za
vnoremap <Space> za
"" Folding }}}

"" Mapping {{{
" Strip all trailing whitespace from a file, using ,W
nnoremap <leader>W :%s/\s\+$//<CR>:let @/=''<CR>

" Insert timestamp
nnoremap <F6> a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>
inoremap <F6> <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>

" Remove the Windows ^M (from http://amix.dk/vim/vimrc.html)
nnoremap <leader>M mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm
"" Mapping }}}

"" Local config {{{
let vimrc_local = expand("~/.vimrc.local", ":p")
if filereadable(vimrc_local)
    execute 'source' vimrc_local
endif
unlet vimrc_local
"" Local config }}}

" Secure settings, at the end of 'vimrc', suggestion from vim documents
set secure

" vim: set ts=8 sw=4 tw=78 fenc=utf-8 ft=vim:

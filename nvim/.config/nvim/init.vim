set nocompatible
"set showmatch
set ignorecase
set number
"set wildmode=longest,list
set cc=80

filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'arakashic/chromatica.nvim'
Plugin 'roxma/nvim-completion-manager'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on  " allows auto-indenting depending on file type


set shortmess+=c
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

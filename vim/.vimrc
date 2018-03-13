set nocompatible              " be iMproved, required

set t_Co=256
let g:molokai_original = 1

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'ervandew/supertab'
Plugin 'flazz/vim-colorschemes'
Plugin 'pearofducks/ansible-vim'
Plugin 'vim-pandoc/vim-rmarkdown'
Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'vim-R-plugin'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"""BASIC TOOLS
"Navigating with guides
"colorscheme Monokai
inoremap hh <Esc>/<++><Enter>"_c4l
"vnoremap <Space><Space> <Esc>/<Enter>"_c4l
"map <Space><Space> <Esc>/<++><Enter>"_c4l
inoremap ;gui <++>
"For normal mode when in terminals (in X I have caps mapped to esc, this replaces it when I don't have X)
inoremap jw <Esc>
inoremap wj <Esc>
inoremap <C-l> <Space><Space>
"""END
autocmd FileType text inoremap ;s Start time: <Esc>:put =strftime(\"%F %T\")<Enter>i<Backspace><Esc>oName: <Enter>Org: <++><Enter>Des: <++><Enter>Notes: <++><Enter>End: <++><Esc>4k$A
autocmd FileType text inoremap ;e <Esc>:put =strftime(\"%F %T\")<Enter>i<Backspace><Esc>A<Enter><Enter>


"""LATEX
autocmd FileType tex inoremap ;wp <Esc>:w<Enter><Esc>:!pdflatex %<Enter><Enter>
autocmd FileType tex inoremap ;fr \begin{frame}<Enter>\frametitle{}<Enter><Enter><++><Enter><Enter>\end{frame}<Enter><Enter><++><Esc>6kf}i
autocmd FileType tex inoremap ;ct \textcite{}<++><Esc>T{i

"""YAML CONFIG
autocmd FileType yaml let b:did_indent = 1
autocmd FileType yaml inoremap ;s - start: <Esc>:put =strftime(\"%F %T\")<Enter>i<Backspace><Esc>o<Backspace><Backspace>  name: <++><Enter>org: <++><Enter>desc: <++><Enter>notes: <++><Enter>end: <++><Esc>5k$a
autocmd FileType yaml inoremap ;e <Esc>:put =strftime(\"%F %T\")<Enter>i<Backspace><Esc>A<Enter><Enter><Esc>:w<Enter>i


augroup filetypedetect
	    au BufRead,BufNewFile *.rmd set filetype=rmarkdown
augroup END

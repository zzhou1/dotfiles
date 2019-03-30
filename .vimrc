

"""""""""""""""""""""""""""""""""""""""""""
" TIP: set up Vundle in your .vimrc by adding the following to the top
" https://realpython.com/vim-and-python-a-match-made-in-heaven/

set nocompatible              " required
filetype off                  " required


" Install Vundle, one of best out of several VIM extension managers
" git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-python/python-syntax'
Plugin 'vim-syntastic/syntastic'
Plugin 'tmhedberg/SimpylFold'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'

" Follow YCM installation instruction at
" https://github.com/Valloric/YouCompleteMe#linux-64-bit
Plugin 'Valloric/YouCompleteMe'

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Beyond the above .vimrc setup, now launch VIM and run
" :PluginInstall

"""""""""""""""""""""""""""""""""""""""""""
" TIP: split navigations
"

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright


"""""""""""""""""""""""""""""""""""""""""""
" TIP: Enable folding
"

set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za

"""""""""""""""""""""""""""""""""""""""""""
" TIP: To add the proper PEP 8 indentation

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=72 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
    \ set shiftwidth=4

"""""""""""""""""""""""""""""""""""""""""""
" TIP: Flagging Unnecessary Whitespace

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/



"""""""""""""""""""""""""""""""""""""""""""
" TIP: enable all Python syntax highlighting features
let python_highlight_all = 1


"""""""""""""""""""""""""""""""""""""""""""
" TIP: other global settings

" enable syntax highlighting
" :help :syntax on
"syntax enable
syntax on

" show line numbers
set number

" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" the dark scheme keeps eye health longer
if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme zenburn
endif





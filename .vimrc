
"""""""""""""""""""""""""""""""""""""""""""
" TIP: global visual highlighting
"
" put this in the beginning and let Python setting override them
"
 
set cursorline 		" show a visual line under the cursor's current line
set colorcolumn=73	" highlight column after 'textwidth'
set textwidth=72	" align to Thunderbird mailnews.wraplength 72

set number 		" show line numbers
set showmatch 		" show the matching part of the pair for [] {} and ()

"syntax enable		" enable syntax highlighting
syntax on		" :help :syntax on


set autoindent		" ai 自动缩进 ( works very good with gqap/gq} )
set formatoptions=tcqn 	" :help formatoptions



"""""""""""""""""""""""""""""""""""""""""""
" TIP: vim Plugin manager - Vundle
" https://realpython.com/vim-and-python-a-match-made-in-heaven/
"

" Step 1.
" set up Vundle in your .vimrc by adding the following before stuff related to Vundle

set nocompatible              " required
filetype off                  " required


" Step 2.
" Install Vundle, one of best out of several VIM extension managers
" git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" Step 3.
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Step 4.
" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-python/python-syntax'
Plugin 'vim-syntastic/syntastic'
Plugin 'tmhedberg/SimpylFold'
Plugin 'jnurmine/Zenburn'			" dark theme for eye health
Plugin 'altercation/vim-colors-solarized'	" dark theme for eye health
Plugin 'nvie/vim-flake8'			" PEP8 checker
"Plugin 'bitc/vim-bad-whitespace'

" Follow YCM installation instruction at
" https://github.com/Valloric/YouCompleteMe#linux-64-bit
Plugin 'Valloric/YouCompleteMe' 	" github README: python3 install.py


" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Step 5.
" Invoke installation process
" :PluginInstall

"""""""""""""""""""""""""""""""""""""""""""
" TIP: Windows Mnanagement


" split navigations

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
" TIP: global dark theme is good for long eye reading work
"
" Plugin 'jnurmine/Zenburn'			" required
" Plugin 'altercation/vim-colors-solarized'	" required
"

if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme zenburn
endif

"""""""""""""""""""""""""""""""""""""""""""
" TIP: SHELL support

function s:FuncShell() 
    setlocal textwidth=79     " lines longer than 79 columns will be broken
    setlocal colorcolumn=80
endfunction

au! BufNewFile,BufRead *.sh call s:FuncShell()

"""""""""""""""""""""""""""""""""""""""""""
" TIP: Python support

" To add the proper PEP 8 indentation

function s:FuncPython() 
    setlocal tabstop=4        " a hard TAB displays as 4 columns
    setlocal softtabstop=4    " insert/delete 4 spaces when TAB/BACKSPACE
    setlocal shiftwidth=4     " operation >> indents 4 columns; << unindents 4
    setlocal textwidth=79     " lines longer than 79 columns will be broken
    setlocal colorcolumn=80
    setlocal expandtab        " insert spaces when hitting TABs
    setlocal autoindent       " align the new line indent with the previous line
    setlocal shiftround       " round indent to multiple of 'shiftwidth'
    setlocal fileformat=unix 
    syntax on 

    " .py: Flagging Unnecessary Whitespace
    
    "highlight BadWhitespace ctermbg=red guibg=darkred
    "highlight BadWhitespace ctermfg=16 ctermbg=253 guifg=#000000 guibg=#F8F8F0
    "au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
    "au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match Cursor /\s\+$/
    "au BufRead,BufNewFile *.py,*.pyw match Cursor /^\s*\t\+/
endfunction

":help augroup
"augroup python
"    au!
"    au BufNewFile,BufRead *.py,*.pyw call s:FuncPython()
au! BufNewFile,BufRead *.py,*.pyw call s:FuncPython()
"augroup END



" python: enable all Python syntax highlighting features
let python_highlight_all = 1


"""""""""""""""""""""""""""""""""""""""""""
" TIP: .md markdown syntax support
"
":help augroup
augroup markdown
    au!
    au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
augroup END

syntax on



"""""""""""""""""""""""""""""""""""""""""""
" TIP: Chinese Language Support
"
set encoding=utf-8
set fileencodings=utf-8,chinese,latin-1
if has("win32")
set fileencoding=chinese
else
set fileencoding=utf-8
endif











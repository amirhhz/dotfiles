set nocompatible            " Use Vim settings; must be first.

call pathogen#infect()      " Enable pathogen

syntax enable
set encoding=utf-8
set showcmd                 " display incomplete commands
filetype plugin indent on   " load file type plugins + indentation
set mouse=a                 " Allow mouse usage in terminal mode
let mapleader=","           " Use comma for <Leader>


"" Whitespace
set nowrap                  " don't wrap lines
set showbreak=…             " But if turned on indicate wraps with ellipsis
set tabstop=4 shiftwidth=4  " a tab is four spaces
set expandtab               " use spaces, not tabs
set backspace=indent,eol,start  " backspace over everything in insert mode
set listchars=tab:>-,trail:~    " List of whitespace I don't like ...
set list                    " ... and show them

"" Searching
set hlsearch                " Highlight matches
set incsearch               " incremental searching
set ignorecase              " Case insensitive search ...
set smartcase               " ...unless there is a capital letter
set wrapscan                " Wrap search
set wildmenu                " Tab-completion more like bash

" Shortcut for turn off search highlights
nnoremap <Leader><Esc> :nohlsearch<cr>


"" Backup
set nowritebackup           " Do not keep backups whilst editing non-saved file ...
set nobackup                " and don't keep backups arounds after saving.
set history=50              " keep 50 lines of command line history
set directory-=.            " Don't keep swap files next to originals

"" Files and Folders
set wildignore=*.pyc

"" Status
set ruler                   " show the cursor position all the time
set laststatus=2            " Always(=2) display the status line

"" Color scheme
let g:solarized_termcolors=256
silent! :colorscheme solarized
set background=dark
set cursorline

"" Line numbers
set number                  " Show line numbers
set numberwidth=5           " Minimum no. of columns for line number

"" Customise Command-T
silent! let g:CommandTMaxHeight=15
nnoremap <silent> <Leader>f :CommandT<CR>
nnoremap <silent> <Leader>t :CommandTTag<CR>
nnoremap <silent> <Leader>b :CommandTBuffer<CR>
nnoremap <silent> <Leader>j :CommandTJump<CR>

"" Custom mappings

" Strip all trailing whitespace, maintaining current position
map <Leader>s ms:%s/\s\+$//<CR>`s

" Don't use Ex mode, replace Q with formatting command
map Q gq

" Make Y consistent with C and D by yanking till the end of the line
noremap Y y$

" Shorter window movements
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Toggling line-wrapping, and display current wrap value
noremap <leader>w :setlocal wrap!<CR>:setlocal wrap?<CR>

" Regenerate python tags file for current dir and tell Command-T
noremap <F12> :silent !ctags -R --languages=python .<CR>:CommandTFlush<CR>

"" Custom whitespace for filetypes
autocmd Filetype ruby setlocal tabstop=2 shiftwidth=2

"" Customisations for plugins
let g:pyflakes_use_quickfix = 0

"" Local config
if filereadable(".vimrc.local")
    source .vimrc.local
endif

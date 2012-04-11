set nocompatible            " Use Vim settings; must be first.

call pathogen#infect()      " Enable pathogen

syntax enable
set encoding=utf-8
set showcmd                 " display incomplete commands
filetype plugin indent on   " load file type plugins + indentation

"" Whitespace
set nowrap                  " don't wrap lines
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


"" Backup
set writebackup             " Keep backups whilst editing non-saved file ...
set nobackup                " ... but don't keep backups arounds after saving.
set history=50              " keep 50 lines of command line history

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

"" Local config
if filereadable(".vimrc.local")
    source .vimrc.local
endif

"" Custom mappings

" remove all trailing whitespace
map <Leader>w :%s/\s\+$//<CR>

" Don't use Ex mode, replace Q with formatting command
map Q gq

" Shorter window movements
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"" Custom whitespace for filetypes
autocmd Filetype ruby setlocal tabstop=2 shiftwidth=2

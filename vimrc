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
silent! :colorscheme solarized
set background=dark
set cursorline

"" Line numbers
set number                  " Show line numbers
set numberwidth=5           " Minimum no. of columns for line number

"" GUI settings
if has("gui_running")
    set columns=160         " Resize GUI to fit at least laptop screen
    set lines=39
    set mouse=a             " ensure mouse is enabled
endif

"" Local config
if filereadable(".vimrc.local")
    source .vimrc.local
endif


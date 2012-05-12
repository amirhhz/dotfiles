set guioptions-=T       " Get rid of the toolbar

set columns=170         " Resize GUI to fit at least laptop screen
set lines=39

set mouse=a             " ensure mouse is enabled

if has("gui_macvim")
    silent! set guifont=DejaVu\ Sans\ Mono:h12
endif

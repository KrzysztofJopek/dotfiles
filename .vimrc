"""basic settings
syntax on
set number
set cindent
set tabstop=4
set shiftwidth=4
set expandtab
set backspace=indent,eol,start


"""plugins
filetype plugin indent on
call plug#begin()

Plug 'ctrlpvim/ctrlp.vim'
Plug 'Valloric/YouCompleteMe'
"theme
Plug 'crusoexia/vim-monokai'

call plug#end()

"""YouCompleteMe settings
let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_insertion = 1

"""theme settings
set t_Co=256
set background=dark
colorscheme monokai
"respect terminal background
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE
highlight LineNr ctermbg=NONE
"notify when over 80cols
match ErrorMsg /\%81v./

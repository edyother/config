" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

set number
set relativenumber

set cursorline
set cursorcolumn

colorscheme desert

if &diff
    syntax off
endif

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=999

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
set history=1000

"Plugins

call plug#begin('~/.local/share/vim/plugged')
Plug 'vim-scripts/AutoComplPop'
Plug 'farmergreg/vim-lastplace'
Plug 'LunarWatcher/auto-pairs'
Plug 'lervag/vimtex'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-surround'
call plug#end()

set omnifunc=syntaxcomplete#Complete
set complete+=kspell
set completeopt=menuone,longest
set shortmess+=c

" vimtex settings
let g:vimtex_view_method = 'zathura'

map <leader>n :NERDTreeFocus<CR>
nnoremap ; <C-w>



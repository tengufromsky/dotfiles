set nocompatible              " be iMproved, required
filetype off                  " required
set laststatus=2

autocmd FileType python setlocal completeopt-=preview
" set the runtime path to include Vundle and initialize

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')


" let Vundle manage Vundle, required

Plugin 'VundleVim/Vundle.vim'


Plugin 'tpope/vim-fugitive'
Plugin 'lambdalisue/vim-pyenv'
Plugin 'scrooloose/nerdtree'
Plugin 'crusoexia/vim-monokai'
Plugin 'tpope/vim-sensible'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'klen/python-mode'
Plugin 'davidhalter/jedi-vim'
Plugin 'SirVer/ultisnips'
"Plugin 'mitsuhiko/vim-jinja'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdcommenter'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'airblade/vim-gitgutter'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
Plugin 'lukhio/vim-mapping-conflicts'
"Plugin 'tweekmonster/django-plus.vim'
"Dont forget install packages from github for neocomplete( neocomplete press in
"insert mode <C-o> for enable autocomplete, don't forget about gocode from go
"Get command
Plugin 'Shougo/neocomplete'  
Plugin 'fatih/vim-go'
Plugin 'nsf/gocode', {'rtp': 'vim/'}


" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.


" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.


" All of your Plugins must be added before the following line

call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on


"=====================================
"Misc setups
"=====================================
syntax enable
colorscheme monokai
set hlsearch
set incsearch

nnoremap <C-G> :tabm -1<CR>
nnoremap <C-H> :tabm +1<CR>

"Now the brackets don't blow your brain

hi MatchParen cterm=Underline ctermbg=None ctermfg=Cyan


"Now the brackets don't blow your eyes

hi Search cterm=Underline ctermbg=None ctermfg=Cyan
hi IncSearch cterm=Underline ctermbg=None ctermfg=Magenta

"let loaded_matchparen = 1

"For powerlione setup from pip install mode
"python3 from powerline.vim import setup as powerline_setup
"python3 powerline_setup()
"python3 del powerline_setup
"set rtp+=/usr/lib/python3.5/site-packages/powerline/bindings/vim/
"set laststatus=2
"set t_Co=256

set nowrap
set textwidth=79
set relativenumber
set numberwidth=3
set ignorecase
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab "Ставим табы пробелами
set softtabstop=4 "4 пробела в табе

"=====================================
 "VirtualEnv settings
"=====================================

"let g:virtualenv_directory = '$HOME/My_projects/virt_envs/'


"=====================================
" Python-Mode settings
"=====================================

let g:pymode_rope = 0
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0

" documentation
let g:pymode_doc = 0
let g:pymode_doc_key = '<leader>k'

" code check
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
let g:pymode_lint_ignore="E501,W601,C0110"

" check after saving
let g:pymode_lint_write = 1

" support virtualenv
let g:pymode_virtualenv = 0

"  breakpoints
let g:pymode_breakpoint = 0
let g:pymode_breakpoint_key = '<leader>b'

" syntax check
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" disabcle autofold
let g:pymode_folding = 0

" code runnging
let g:pymode_run = 0

"=====================================
" TagBar settings
"=====================================

map <F4> :TagbarToggle<CR>
let g:tagbar_autofocus = 1 " autofocus on Tagbar open

"=====================================
" NERDTree settings
"=====================================

map <f3> :NERDTreeToggle<CR>
"let NERDTreeMapOpenInTab='<ENTER>' " let nerdtree oopen all new files in new tab

"=====================================
" Vim-session settings
"=====================================

let g:session_autosave = 'no'

nnoremap <Leader>s :SaveSession
nnoremap <Leader>l :OpenSession

"=====================================
"Airline settings
"=====================================

set laststatus=2
let g:airline#extensions#tabline#enabled=1
let g:airline_enable_fugitive=1
let g:airline_theme='powerlineish'
let g:airline_enable_virtualenv=1
let g:airline_powerline_fonts = 1
let g:airline_enable_gitgutter=1
let g:airline_enable_nerdtree=1

let g:airline#extensions#tabline#left_sep = '>'
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#fnamecollapse = 0
let g:airline#extensions#tabline#show_close_button = 0

"=====================================
"Jedi-vim settings
"=====================================

"Disable choose first function/method at autocomplete
let g:jedi#popup_select_first = 1
let g:jedi#enable_docstring = 1
let g:jedi#popup_on_dot = 1
let g:jedi#documentation_command = "<leader>k"

"=====================================
"Vim-Go
"=====================================

"dont forget :GoInstallBinaries
let g:go_doc_keywordprg_enabled = 0
nnoremap Q :GoDoc<CR>

"=====================================
""Neocomplete
"=====================================

let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

"=====================================
"Bindings
"=====================================

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let g:go_snippet_engine = "ultisnips"
let g:UltiSnipsUsePythonVersion = 3

" Go related mappings
"au FileType go nmap <Leader>i <Plug>(go-info)
"au FileType go nmap <Leader>gd <Plug>(go-doc)
"au FileType go nmap <Leader>r <Plug>(go-run)
"au FileType go nmap <Leader>b <Plug>(go-build)
"au FileType go nmap <Leader>t <Plug>(go-test)
"au FileType go nmap gd <Plug>(go-def-tab)

"nmap <c-s> :w<CR>
"vmap <c-s> <Esc><c-s>gv
"imap <c-s> <Esc><c-s>
map <f2> :noh<CR>

nmap ,t :tabnew<CR>
nnoremap J :tabn<CR>
nnoremap K :tabp<CR>

nnoremap <C-q> :tabclose<CR>

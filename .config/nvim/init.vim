set nocompatible              " be iMproved, required
filetype off                  " required
set laststatus=2
set encoding=utf8
set cursorline


set splitbelow
set splitright

autocmd FileType python setlocal completeopt-=preview

" set the runtime path to include Vundle and initialize

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')


" let Vundle manage Vundle, required

Plugin 'VundleVim/Vundle.vim'


Plugin 'tpope/vim-fugitive'
Plugin 'blueyed/vim-diminactive'
"Plugin 'lambdalisue/vim-pyenv'
Plugin 'scrooloose/nerdtree'
Plugin 'crusoexia/vim-monokai'
Plugin 'tpope/vim-sensible'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jmcantrell/vim-virtualenv'
"Plugin 'klen/python-mode'
"Plugin 'davidhalter/jedi-vim'
Plugin 'SirVer/ultisnips'
"Plugin 'mitsuhiko/vim-jinja'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdcommenter'
"Plugin 'jistr/vim-nerdtree-tabs'
"Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'airblade/vim-gitgutter'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
Plugin 'lukhio/vim-mapping-conflicts'
"Plugin 'Shougo/neocomplete'  
Plugin 'fatih/vim-go'
Plugin 'nsf/gocode', {'rtp': 'vim/'}
Plugin 'jiangmiao/auto-pairs'
Plugin 'mileszs/ack.vim'
Plugin 'pseewald/nerdtree-tagbar-combined'
Plugin 'easymotion/vim-easymotion'

"NEOVIM-BASED PLUGINS
"Deoplete needs neovim-python-client module (install via pacman)
"don't forget print :UpdateRemotePlugins
Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plugin 'zchee/deoplete-go', {'build': {'unix': 'make'}}
Plugin 'jodosha/vim-godebug'
"Plugin 'ryanoasis/vim-devicons'
"Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
"
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'



" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.


" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.


" All of your Plugins must be added before the following line

call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on

let g:deoplete#enable_at_startup = 1

"=====================================
"Misc setups
"=====================================
syntax enable
colorscheme monokai
set hlsearch
set incsearch

"nnoremap <C-G> :tabm -1<CR>
"nnoremap <C-H> :tabm +1<CR>

"Now the brackets don't blow your brain

hi MatchParen cterm=Underline ctermbg=None ctermfg=Cyan


"Now the brackets don't blow your eyes

hi Search cterm=Underline ctermbg=None ctermfg=Cyan
hi IncSearch cterm=Underline ctermbg=None ctermfg=Magenta

"let loaded_matchparen = 1

"For powerline setup from pip install mode
"python3 from powerline.vim import setup as powerline_setup
"python3 powerline_setup()
"python3 del powerline_setup
"set rtp+=/usr/lib/python3.5/site-packages/powerline/bindings/vim/
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

"let g:pymode_rope = 0
"let g:pymode_rope_completion = 0
"let g:pymode_rope_complete_on_dot = 0

"" documentation
"let g:pymode_doc = 0
"let g:pymode_doc_key = '<leader>k'

"" code check
"let g:pymode_lint = 1
"let g:pymode_lint_checker ="pyflakes,pep8"
"let g:pymode_lint_ignore="E501,W601,C0110"

"" check after saving
"let g:pymode_lint_write = 1

"" support virtualenv
"let g:pymode_virtualenv = 0

""  breakpoints
"let g:pymode_breakpoint = 0
"let g:pymode_breakpoint_key = '<leader>b'

"" syntax check
"let g:pymode_syntax = 1
"let g:pymode_syntax_all = 1
"let g:pymode_syntax_indent_errors = g:pymode_syntax_all
"let g:pymode_syntax_space_errors = g:pymode_syntax_all

"" disabcle autofold
"let g:pymode_folding = 0

"" code runnging
"let g:pymode_run = 0

"=====================================
" TagBar settings
"=====================================

map <silent> <F4> :TagbarToggle<CR>
let g:tagbar_autofocus = 1 " autofocus on Tagbar open

"=====================================
" NERDTree settings
"=====================================

map <silent> <F3> :NERDTreeToggle<CR>
"let NERDTreeMapOpenInTab='<ENTER>' " let nerdtree oopen all new files in new tab

"let g:webdevicons_enable_nerdtree = 1
"let g:webdevicons_enable_airline_tabline = 1
"let g:webdevicons_enable_airline_statusline = 1
"let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
"let g:WebDevIconsUnicodeDecorateFolderNodes = 1
"let g:DevIconsEnableFoldersOpenClose = 1
"let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '

"=====================================
" Vim-session settings
"=====================================

let g:session_autosave = 'no'

"nnoremap <Leader>s :SaveSession
"nnoremap <Leader>l :OpenSession

"=====================================
"Airline settings
"=====================================

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

let g:go_snippet_engine = "ultisnips"
set completeopt-=preview

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_variable_declarations = 1

let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
"let g:go_metalinter_enabled = ['vet', 'errcheck --blank --lint', 'golint']
let g:go_metalinter_autosave_enabled = ['golint']
"let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_metalinter_autosave = 1
let g:go_fmt_command = "goimports"

let g:go_autodetect_gopath = 1
"dont forget :GoInstallBinaries
let g:go_doc_keywordprg_enabled = 0

let g:go_def_reuse_buffer = 1

nnoremap Q :GoDoc<CR>
autocmd FileType go nmap ,b  <Plug>(go-build)
autocmd FileType go nmap ,r  <Plug>(go-run)
autocmd FileType go nmap ,i  <Plug>(go-info)
autocmd FileType go nmap ,d  <Plug>(go-def-vertical)
autocmd FileType go nmap ,m  <Plug>(go-metalinter)

"=====================================
"Neocomplete
"=====================================

"inoremap <expr><C-g>     neocomplete#undo_completion()
"inoremap <expr><C-l>     neocomplete#complete_common_string()

let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

"=====================================
"Ultisnips
"=====================================

let g:UltiSnipsUsePythonVersion = 3

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let g:go_snippet_engine = "ultisnips"

"=====================================
"Ack.vim
"=====================================

if executable('ag')
      let g:ackprg = 'ag --vimgrep'
  endif

"=====================================
" easymotion
"=====================================

" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

"=====================================
" Fzf.vim
"=====================================

" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

" Advanced customization using autoload functions
inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})

let g:fzf_buffers_jump = 1

"=====================================
"diminactive
"=====================================

let g:diminactive_use_syntax = 0

" dark light for inactive windows
highlight ColorColumn ctermbg=0 guibg=#eee8d5

"=====================================
"Bindings
"=====================================


map <silent> <f2> :noh<CR>

"au FileType go nmap <leader>r (go-run-tab)
"for vim-go and debugging
map <silent> <C-n> :cnext<CR>
map <silent> <C-m> :cprevious<CR>
nnoremap <silent> <leader>a :cclose<CR>

nmap <silent> ,t :tabnew<CR>
nnoremap <silent> J :tabn<CR>
nnoremap <silent> K :tabp<CR>

"nmap ,t :tabnew<CR>
"nnoremap J :tabn<CR>
"nnoremap K :tabp<CR>


"conflict with TMUX bindings
inoremap <C-a> <NOP>
nnoremap <C-a> <NOP>

nnoremap <silent> <C-q> :bw<CR>
nmap <silent> <F7> :ToggleNERDTreeAndTagbar<CR>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

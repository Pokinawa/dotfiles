"" pathogen
call pathogen#infect()
"" set file type plugin on
filetype plugin on
"" space/tab substitution, size & autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set autoindent
set cindent
set encoding=utf-8
"" incremental search
set ignorecase
set smartcase
set incsearch
"" highlight search 'hits'
set hlsearch
"" colorscheme
set t_Co=256 "" 256 colour mode
colors molokai
let g:molokai_original = 1
let g:rehash256 = 1
let g:airline_theme="badwolf"
""colors muon
"" colour column
"" set colorcolumn=80
set backspace=indent,eol,start
"" cursor position info
set ruler
"" when inserting a closing parenthesis, briefly flash the closed one
set showmatch
"" backup directory
set bdir=~/.vim/bak
"" remap <Leader> to ','; it defaults to '\' which is a pain to reach.
let mapleader = ","
"" highlight trailing whitespace
match ErrorMsg '\s\+$'
"" ... and delete it (rws ::= remove whitespace)
nnoremap <Leader>rws :%s/\s\+$//e<CR>
"" allow j and k keys to move even inside wrapped lines
map j gj
map k gk
"" line numbers
set number
"" syntax highlighting
syntax on

"" show highlighting groups for current word
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

set backup
set backupdir=~/.vim/backups

nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

set laststatus=2

let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
      let g:airline_symbols = {}
  endif

"" YCM configuration
let g:ycm_global_ycm_extra_conf = '/home/anuj/.vim/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

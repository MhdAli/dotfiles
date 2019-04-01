"let $PYTHONPATH='/usr/lib/python3.4/site-packages'
set laststatus=2
set backupcopy=no

"syntax on
"filetype plugin indent on

set nocompatible      " We're running Vim, not Vi!
filetype on           " Enable filetype detection
filetype plugin on    " Enable filetype-specific plugins
autocmd FileType ruby compiler ruby

set autoindent

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'tpope/vim-sensible'
Plugin 'kana/vim-textobj-user'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'Glench/Vim-Jinja2-Syntax'
Plugin 'parkr/vim-jekyll'
Plugin 'tpope/vim-fugitive'
Plugin 'morhetz/gruvbox'
Plugin 'terryma/vim-multiple-cursors'
call vundle#end()

set autoindent
set backspace=indent,eol,start
set cindent " set smartindent
set cmdheight=2
set cursorcolumn
set cursorline
set errorformat=\"../../%f\"\\,%*[^0-9]%l:\ %m
set expandtab
set hidden
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set list
set listchars=tab:>-,trail:-
"set mouse=c
set nowrap
set number
set ruler
set scrolloff=5
set showcmd
set showmatch
set smarttab
"set statusline=%F%m%r%h%w\ [%{&ff}]\ %y\ [CHR=%b/0x%B]\
"[POS=%04l,%03c(%03v)]\ [%p%%]\ [LEN=%L]\ %{fugitive#statusline()}
"set t_Co=256
"set tags=tags;/
"set virtualedit=block
"set wrap

highlight   CursorColumn  term=NONE    cterm=none ctermbg=232
highlight   CursorLine    term=NONE    cterm=bold ctermbg=8
highlight   FoldColumn                            ctermbg=8  ctermfg=14
highlight   Folded                                ctermbg=8  ctermfg=14
highlight   Search        term=reverse cterm=bold ctermbg=11 ctermfg=0
highlight   Visual        term=NONE    cterm=bold ctermbg=10 ctermfg=8

autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
autocmd Filetype yaml setlocal ts=2 sw=2 expandtab
autocmd Filetype sls setlocal ts=2 sw=2 expandtab
autocmd Filetype jinja setlocal ts=2 sw=2 expandtab

autocmd BufNewFile,BufRead *.yml setlocal filetype=yaml
autocmd BufNewFile,BufRead *.jinja setlocal filetype=jinja
autocmd BufNewFile,BufRead *.sls setlocal filetype=sls

vnoremap // y/<C-R>"<CR>
nnoremap <Leader>t :CtrlPBuffer<CR>

if executable('rg')
  set grepprg=rg\ --color=never
  let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
  let g:ctrlp_use_caching = 0
endif

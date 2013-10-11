ab rcc e ~/.vimrc
ab srcc source ~/.vimrc
ab hclb <div style="clear:both"></div>
ab jsfails ,\(\s\\|\n\\|\t\)*\(}\\|)\)

ab divv $DIV()
ab spann $SPAN()
ab tdd $TD()
ab imgg G.util.$IMG
ab aaa $A()
ab clb $DIV().css("clear","both")
ab brr $BR()

ab clog G.log
ab al alert
ab al1 alert(1)
ab al2 alert(2)
ab al3 alert(3)
ab al4 alert(4)
ab al5 alert(5)
ab al6 alert(6)
ab al7 alert(7)
ab al8 alert(8)
ab al9 alert(9)
ab al0 alert(0)
ab deb logging.debug
ab g G
ab gu G.util

ab ut e static/js/util.js

map <C-j> :e static/js/
map <C-g> :e ../../gaequixey/src/
map <C-t> :e templates/
map <C-d> :e static/js/data/
map <C-c> :e static/js/controls/
map <C-p> :e static/js/pages/
map <C-o> :e ../../gaequixey/src/

set background=dark
syntax on

filetype plugin indent on
set backspace=indent,eol,start

set clipboard+=unnamed
set fileformats=unix,dos,mac
"set mouse=a
set wildmenu
set completeopt=
set nobackup
set title
set splitright
set splitbelow

set nocompatible
set autoindent
set smartindent
set softtabstop=4
set shiftwidth=4
set tabstop=4
set visualbell t_vb=

set ruler
set incsearch
set laststatus=2
set list
set listchars=tab:>-,trail:-
" set listchars=trail:-
set number
set report=0
set scrolloff=8

set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]

set expandtab
set formatoptions=rq
set ignorecase
set smartcase
set hlsearch

set mouse=a

"colers
hi Comment ctermfg=darkgray

"hex editing
nnoremap <C-H> :Hex<CR>
inoremap <C-H> <Esc>:Hex<CR>
vnoremap <C-H> :<C-U>Hex<CR>

" ex command for toggling hex mode - define mapping if desired
command -bar Hex call ToggleHex()

" helper function to toggle hex mode
function ToggleHex()
  " hex mode should be considered a read-only operation
  " save values for modified and read-only for restoration later,
  " and clear the read-only flag for now
  let l:modified=&mod
  let l:oldreadonly=&readonly
  let &readonly=0
  let l:oldmodifiable=&modifiable
  let &modifiable=1
  if !exists("b:editHex") || !b:editHex
    " save old options
    let b:oldft=&ft
    let b:oldbin=&bin
    " set new options
    setlocal binary " make sure it overrides any textwidth, etc.
    let &ft="xxd"
    " set status
    let b:editHex=1
    " switch to hex editor
    %!xxd
  else
    " restore old options
    let &ft=b:oldft
    if !b:oldbin
      setlocal nobinary
    endif
    " set status
    let b:editHex=0
    " return to normal editing
    %!xxd -r
  endif
  " restore values for modified and read only state
  let &mod=l:modified
  let &readonly=l:oldreadonly
  let &modifiable=l:oldmodifiable
endfunction

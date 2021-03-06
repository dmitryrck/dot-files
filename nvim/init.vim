filetype plugin indent on
set encoding=utf8 " Use utf-8 as default encoding

" Vundler
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#rc()

" My plugins to install/update with vundler See http://vimawesome.com/
Plugin 'gmarik/snipmate.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-rails'
Plugin 'kshenoy/vim-signature'
Plugin 'tpope/vim-surround'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'elixir-lang/vim-elixir'

let mapleader = ","

let NERDSpaceDelims = 2
set number

set wrap " Line wrapping on
set ts=2 sts=2 sw=2 expandtab " Use spaces instead tabs. From: http://vimcasts.org/episodes/tabs-and-spaces/

autocmd FileType go setlocal shiftwidth=2 tabstop=2 noexpandtab
autocmd BufNewFile,BufRead *.eex :set filetype=eelixir
autocmd BufNewFile,BufRead *.md,*.markdown :set filetype=markdown

" Disable defaults
set noswapfile " Dont create *.swp* files. Useful to use with dropbox.
set nobackup " Dont create ~ files.
set nowritebackup
set nocursorline " Dont underline all line.
setlocal incsearch " Set search *dinamic*
set hlsearch " No highlight searchs

" Show invisibles
" http://vimcasts.org/episodes/show-invisibles/
set list
set listchars=tab:\|\ ,trail:·,eol:¬

" Status line
" Customize status line
" `:help statusline`
set laststatus=2 " Always show statusline
set statusline=%<%f\ \[%{&ff}\]\ %y\ %h%m%r%=%-14.(%c%V%)\ %l/%L[%P]

" Disable arrow keys
" http://vimcasts.org/blog/2013/02/habit-breaking-habit-making/
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" pay attention when the line has more then 80 characters. Tip by
" @MarceloCajueiro
match Error /\%80v.\+/

"set textwidth=80 " Use gq when in visual mode

colorscheme desert
syntax on

" From: http://ryanselk.com/2015/05/19/terminals-in-neovim/
tnoremap <C-q> <C-\><C-n>

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

au BufRead,BufNewFile *.ex,*.exs set filetype=elixir

nmap <Tab> gt
nmap <S-Tab> gT

set mouse-=a

set foldmethod=manual

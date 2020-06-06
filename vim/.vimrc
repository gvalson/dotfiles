"----------BASIC OPTIONS---------"
set nocompatible

"----------VUNDLE---------"

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Vim-latex suite
Plugin 'lervag/vimtex'

" eclim
Plugin 'dansomething/vim-eclim'

" vim-surround
Plugin 'tpope/vim-surround'

" vim-commentary
Plugin 'tpope/vim-commentary'

Plugin 'tpope/vim-repeat'

" Goyo
Plugin 'junegunn/goyo.vim'

call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"----------COOL SETTINGS---------"

" Syntax highlighting, possibly more color stuff
syntax on

" Numbering
set number
set relativenumber

" Show the incomplete command in the bottom
set showcmd

" Mapping the leader to backslash
let mapleader = "\\"

" <++> as a guide (thanks, Luke)
inoremap <leader><leader> <Esc>/<++><Enter>"_c4l
vnoremap <leader><leader> <Esc>/<++><Enter>"_c4l
map <leader><leader> <Esc>/<++><Enter>"_c4l

" Cool interactive menu
set wildmenu

" Setting the path for :find
set path+=~/Documents/markor_notes/**,~/Documents/vim_playground/**

" Using the built-in dictionary (that exists?)
set dictionary=/usr/share/dict/words

" Setting tabs:
set tabstop=4 
set shiftwidth=4 
set softtabstop=4 
set expandtab 

" Smart search case
set ignorecase
set infercase

" Disable modelines ( as cool as they are :'( )
set nomodeline

" Set folding method for syntax (smart)
set foldmethod=syntax

"----------COOL MAPPINGS---------"
nnoremap <leader>ev :vsplit $MYVIMRC <CR>
nnoremap <leader>sv :so $MYVIMRC <CR>

"----------FILE-SPECIFIC STUFF (MOVE INTO AUGROUPS PLX)---------"

" md stuff:
autocmd Filetype markdown set textwidth=85 " Does not work for some reason.
autocmd Filetype markdown set spell
autocmd Filetype markdown inoremap ;i ** <++> <C-O> F*
autocmd Filetype markdown nnoremap ;ai Bi*<Esc>Ei*<Esc>
autocmd Filetype markdown inoremap ;b ****<Left>
autocmd Filetype markdown nnoremap ;ab Bi**<Esc>Ei**<Esc>

" tex stuff:
autocmd FileType tex set textwidth=85
autocmd FileType tex set colorcolumn=85
autocmd FileType tex inoreabbrev ;b \textbf{
autocmd FileType tex inoreabbrev ;e \emph{
autocmd FileType tex inoreabbrev ;i \textit{
autocmd FileType tex inoreabbrev ;pc \parencite{
autocmd FileType tex inoreabbrev ;tc \textcite{
" autocmd FileType tex inoremap 
" autocmd FileType tex inoremap 

" Java stuff:

autocmd FileType java inoreabbrev psvm public static void main (String[] args) {
" main method

autocmd Filetype java inoreabbrev sopl System.out.println(
autocmd Filetype java inoreabbrev sop System.out.print(
" autocmd FileType java nnoremap <leader>c :Java <CR>
"autocmd FileType java nnoremap <leader>c :!javac % && java FILE_NAME <CR>
" Requires Eclim

" HTML stuff:
autocmd Filetype html set tabstop=2 
autocmd Filetype html set shiftwidth=2 
autocmd Filetype html set softtabstop=2 

" Python stuff:
autocmd FileType python nnoremap <leader>c :!python3 % <CR>

"----------BASIC OPTIONS---------"
set nocompatible              " be iMproved, required
filetype off                  " required

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

" syntax highlighting, possibly more color stuff
syntax on

" numbering
set number
set relativenumber

" Mapping the leader to backslash
let mapleader = "\\"

" <++> as a guide
inoremap <leader><leader> <Esc>/<++><Enter>"_c4l
vnoremap <leader><leader> <Esc>/<++><Enter>"_c4l
map <leader><leader> <Esc>/<++><Enter>"_c4l

" cool interactive menu
set wildmenu

" Using the built-in dictionary (that exists?)
set dictionary=/usr/share/dict/words

"Setting tabs:
set tabstop=4 
set shiftwidth=4 
set softtabstop=4 
set expandtab 


"----------FILE-SPECIFIC STUFF (MOVE INTO COOL SNIPPETS PLX)---------"

" md stuff:
autocmd Filetype markdown set tw=85 " Does not work for some reason.
autocmd Filetype markdown set spell
autocmd Filetype markdown inoremap ;i ** <++> <C-O> F*
autocmd Filetype markdown nnoremap ;ai Bi*<Esc>Ei*<Esc>
autocmd Filetype markdown inoremap ;b ****<Left>
autocmd Filetype markdown nnoremap ;ab Bi**<Esc>Ei**<Esc>

" tex stuff:
autocmd FileType tex set tw=85
" Colored column
autocmd FileType tex set colorcolumn=85 
autocmd FileType tex inoremap ;b \textbf{<++>}
autocmd FileType tex inoremap ;e \emph{<++>}
autocmd FileType tex inoremap ;i \textit{<++>}
autocmd FileType tex inoremap ;pc \parencite{<++>}
autocmd FileType tex inoremap ;tc \textcite{<++>}
" autocmd FileType tex inoremap 
" autocmd FileType tex inoremap 

filetype plugin on

"Java stuff:

autocmd FileType java inoremap ;psvm public<Space>static<Space>void<Space>main<Space>(String[]<Space>args)<Space>{<Space><Enter><++><Enter>}
"main method

autocmd Filetype java inoremap ;sopl System.out.println(<++>);
autocmd Filetype java inoremap ;sop System.out.print(<++>);
"print stuff

"HTML stuff:

"Python stuff:
autocmd FileType python nnoremap <leader>c :!python3 % <Enter>

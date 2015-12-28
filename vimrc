" """"""
" Vundle
" """"""
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'ervandew/supertab'
Plugin 'flazz/vim-colorschemes'
Plugin 'garbas/vim-snipmate'
Plugin 'kien/ctrlp.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'scrooloose/nerdtree'
Plugin 'tomtom/tcomment_vim'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vimoutliner/vimoutliner'
Plugin 'vim-scripts/taglist.vim'
Plugin 'VundleVim/Vundle.vim'
Plugin 'Yggdroot/indentLine'

call vundle#end()


" """""""
" General
" """""""
" Backspace
set backspace=indent,eol,start

" Compatibility
set nocompatible


" Document Formatting
set autoindent
set expandtab
set nowrap
set shiftwidth=4
set smarttab
set tabstop=4

" Filetype Support
filetype on
filetype plugin on
filetype indent on
syntax on

" Filetype-specific Settings
"autocmd BufWritePost *.js !jsmin < % > `echo % | sed 's/\./.min./'`
"autocmd BufWritePost *.json !python -m json.tool && jsmin < % > `echo % | sed 's/\./.min./'`
autocmd FileType make setlocal noexpandtab
autocmd FileType otl setlocal spell
augroup filetype
    autocmd BufNewFile,BufRead *.html set filetype=php
augroup END


" Mouse support
set mouse=a

" Search
set incsearch
set hlsearch
set ignorecase
set smartcase

" """"""""""
" Appearance
" """"""""""
" Cmder color palette fix
if !empty($CONEMUBUILD)
    set term=xterm
    set t_Co=256
    let &t_AB="\e[48;5;%dm"
    let &t_AF="\e[38;5;%dm"
endif

" Theme
colorscheme vibrantink
colorscheme harlequin

" Ruler / Status line
set ruler " Displays the line, column, and document % in lower-right corner.

" Gutter
set number


" """"""""
" Commands
" """"""""
" Find all TODOs and FIXMEs in the current project and list them in the 
" TODO: command! todo :vimgrep /TODO/j **/*.$current_file's_extension | :cw


" """"""""""""
" Key Bindings
" """"""""""""
" Function Key Bindings
set pastetoggle=<F2>

" File Commands
noremap <silent> <C-o> :browse confirm e<CR>

" Tabs
noremap <silent> <C-PageDown> :tabnext<CR>
noremap <silent> <C-PageUp> :tabprevious<CR>
noremap <silent> <C-t> :tabnew<CR>
noremap <silent> <C-w> :tabclose<CR>

" View Panes
noremap <silent> <F7> :NERDTreeToggle<CR>
noremap <silent> <F8> :TlistToggle<CR>

" Buffers
noremap <silent> <C-c> ggVG"+y


" """""""
" Plugins
" """""""
" Taglist
let Tlist_Auto_Highlight_Tag = 1
let Tlist_Auto_Update = 1
let Tlist_Inc_Winwidth = 0
let Tlist_Sort_Type = "name"
let Tlist_Use_SingleClick = 1

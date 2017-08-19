set nocompatible              " be improved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'altercation/vim-colors-solarized'
Plugin 'editorconfig/editorconfig-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set et
set ts=4
set sw=4
set tw=79
set nowrap
set ai

set number

autocmd BufWritePre *.py :%s/\s\+$//e


:ab pdb import ipdb; ipdb.set_trace()

" Vim-Go Stuff
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

"Vim Airline
set laststatus=2
let g:airline#extensions#branch#enabled=1

autocmd FileType python set colorcolumn=80

" YCM Stuff
" You don't need preview for python
autocmd FileType python set completeopt-=preview
autocmd FileType python let g:ycm_auto_trigger = 0
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_autoclose_preview_window_after_insertion = 1

" For solarized plugin (color scheme)
" https://github.com/altercation/vim-colors-solarized

if has('gui_running')
    syntax enable
    set background=dark
    colorscheme solarized
    let g:solarized_termcolors=256
endif

set nu
set showmatch
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set listchars=tab:>-,trail:-
set smartindent
set laststatus=2
set ruler
set encoding=utf-8
set syntax=on
set backspace=2

let mapleader=','

inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {<CR>}<ESC>O

noremap <leader>wq :wq<CR>
noremap <leader>qa :qall<CR>

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'Valloric/YouCompleteMe'
    Plugin 'rdnetto/YCM-Generator'
    Plugin 'pboettch/vim-cmake-syntax'
    Plugin 'scrooloose/nerdtree'
    Plugin 'jistr/vim-nerdtree-tabs'
    Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plugin 'neovimhaskell/haskell-vim'
    Plugin 'skywind3000/asynctasks.vim'
    Plugin 'skywind3000/asyncrun.vim'
    Plugin 'junegunn/fzf'
    Plugin 'terryma/vim-multiple-cursors'
call vundle#end()
filetype plugin on

"You Complete Me
let g:ycm_global_ycm_extra_config='~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'

" NERD Tree
"autocmd vimenter * NERDTree "auto start NERDTree
map <C-f> :NERDTreeToggle<CR>
let g:NERDTreeHidden=1
let g:NERDTreeShowHidden=1
let g:NERDTreeIgnore=['\.swp']
autocmd vimenter * if !argc()|NERDTree|endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q

let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

let NERDTreeShowLineNumbers=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1

" NERDTree Tab
let g:nerdtree_tabs_open_on_console_startup=0
nnoremap <C-l> :tabn<CR>
nnoremap <C-h> :tabp<CR>
nnoremap <C-x> :tabc<CR>

" NERDTree Syntax highlighting
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1
let g:NERDTreeHighlightFoldersFullName = 1
let g:NERDTreeExtensionHighlightColor = {}

" Haskell Vim
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords

let g:haskell_indent_if = 4
let g:haskell_indent_case = 4
let g:haskell_indent_let = 4
let g:haskell_indent_where = 4
let g:haskell_indent_before_where = 4
let g:haskell_indent_after_bare_where = 4
let g:haskell_indent_do = 4
let g:haskell_indent_in = 4
let g:haskell_indent_guard = 4

" asynctask & asyncrun
let g:asyncrun_open = 6

" vim-multiple-cursors
let g:multi_cursor_use_default_mapping=1

"   Default mapping
"   let g:multi_cursor_start_word_key      = '<C-n>'
"   let g:multi_cursor_select_all_word_key = '<A-n>'
"   let g:multi_cursor_start_key           = 'g<C-n>'
"   let g:multi_cursor_select_all_key      = 'g<A-n>'
"   let g:multi_cursor_next_key            = '<C-n>'
"   let g:multi_cursor_prev_key            = '<C-p>'
"   let g:multi_cursor_skip_key            = '<C-x>'
"   let g:multi_cursor_quit_key            = '<Esc>'


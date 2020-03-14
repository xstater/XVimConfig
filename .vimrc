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
set hlsearch incsearch

let mapleader=','

inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap ( ()<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap {<CR> {<CR>}<ESC>O

noremap <leader>qq :q<CR>
noremap <leader>wq :wq<CR>
noremap <leader>ww :w<CR>
noremap <leader>qa :qall<CR>
noremap <leader>ev :vsplit ~/.vimrc<CR>
noremap <leader>sv :source ~/.vimrc<CR>

nnoremap <leader>" viw<ESC>a"<ESC>hbi"<ESC>lel
nnoremap <leader>' viw<ESC>a'<ESC>hbi"<ESC>lel
nnoremap <leader>( viw<ESC>a)<ESC>hbi(<ESC>lel
nnoremap <leader>[ viw<ESC>a]<ESC>hbi[<ESC>lel
nnoremap <leader>{ viw<ESC>a}<ESC>hbi{<ESC>lel

nnoremap <leader>qc :cclose<CR>

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
    Plugin 'junegunn/fzf.vim'
    Plugin 'terryma/vim-multiple-cursors'
    Plugin 'eagletmt/neco-ghc'
call vundle#end()
filetype plugin on

"You Complete Me
let g:ycm_global_ycm_extra_config='~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_key_invoke_completion='<c-z>'
let g:ycm_semantic_triggers =  {
			\ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
			\ 'cs,lua,javascript': ['re!\w{2}'],
			\ 'haskell': ['re!\w{2}'] }

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

" Neo ghc
let g:necoghc_enable_detailed_browse = 1

" asynctask
let g:asynctasks_extra_config = ['~/.config/asynctask/tasks.ini','~/.vim/tasks.ini']

" AsyncTaskFzf
function! s:fzf_sink(what)
	let p1 = stridx(a:what, '<')
	if p1 >= 0
		let name = strpart(a:what, 0, p1)
		let name = substitute(name, '^\s*\(.\{-}\)\s*$', '\1', '')
		if name != ''
			exec "AsyncTask ". fnameescape(name)
		endif
	endif
endfunction

function! s:fzf_task()
	let rows = asynctasks#source(&columns * 48 / 100)
	let source = []
	for row in rows
		let name = row[0]
		let source += [name . '  ' . row[1] . '  : ' . row[2]]
	endfor
	let opts = { 'source': source, 'sink': function('s:fzf_sink'),
				\ 'options': '+m --nth 1 --inline-info --tac' }
	if exists('g:fzf_layout')
		for key in keys(g:fzf_layout)
			let opts[key] = deepcopy(g:fzf_layout[key])
		endfor
	endif
	call fzf#run(opts)
endfunction

command! -nargs=0 AsyncTaskFzf call s:fzf_task()
noremap <C-t> <ESC>:AsyncTaskFzf<CR>

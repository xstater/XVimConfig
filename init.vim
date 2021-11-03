" basic settings
set number
set relativenumber
set cursorline
set laststatus=2
set ruler
set showmatch
set hlsearch
set incsearch
set nobackup
set nowritebackup
set noswapfile
set noerrorbells
set history=1000
set nowrap
set showmode
set showcmd
set encoding=utf-8
set t_Co=256
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set termguicolors
set hidden
set updatetime=100
set timeoutlen=500
set shortmess+=c
syntax on
filetype indent on
filetype plugin on

" Leader KEY = '\'
" Leader KEY2 = '<space>'

if &compatible
    set nocompatible
endif

" mouse support
set mouse=a

" Vim-Plug
call plug#begin('$XDG_CONFIG_HOME/nvim/plugged')
Plug 'joshdick/onedark.vim'
Plug 'ajmwagar/vim-deus'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'preservim/nerdcommenter'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'dense-analysis/ale'
Plug 'maximbaz/lightline-ale'
Plug 'tpope/vim-fugitive'
Plug 'ludovicchabant/vim-gutentags'
Plug 'skywind3000/gutentags_plus'
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary' }
Plug 'liuchengxu/vista.vim'
Plug 'mbbill/undotree'
call plug#end()
"" Plug actions
nnoremap <space>pu :PlugUpgrade<CR>:PlugUpdate<CR>

" colorscheme
"" transparent background
autocmd ColorScheme * call s:transparent_background()
function! s:transparent_background()
    highlight Normal guibg=NONE ctermbg=NONE
    highlight NonText guibg=NONE ctermbg=NONE
endfunction
"" choose colorscheme
colorscheme deus

" Lightline & bufferline
set noshowmode
set showtabline=2
autocmd BufWritePost,TextChanged,TextChangedI * call lightline#update()
let g:lightline = {
    \ 'colorscheme' : 'deus',
    \ 'separator' : {
        \ 'left': '',
        \ 'right': ''
    \ },
    \ 'subseparator' : {
        \ 'left': '|',
        \ 'right': '|'
    \ },
    \ 'active': {
        \ 'left': [ ['winnr'],
        \           ['mode','paste'],
        \           ['readonly','modified'] ],
        \ 'right': [ ['percent','lineinfo'],
        \            ['fileencoding','fileformat','filetype'],
        \            ['linter_checking','linter_errors','linter_warnings','linter_info','linter_ok']]
    \ },
    \ 'inactive': {
        \ 'left': [ ['winnr'],['filename'] ],
        \ 'right': [[]]
    \ },
    \ 'tabline': {
        \ 'left': [ ['buffers'] ],
        \ 'right': [[]]
    \ },
    \ 'tab' : {
        \ 'active': ['tabnum','filename','modified'],
        \ 'inactive': ['tabnum','filename','modified']
    \ },
    \ 'component_expand': {
        \ 'buffers' : 'lightline#bufferline#buffers',
        \ 'linter_checking': 'lightline#ale#checking',
        \ 'linter_info': 'lightline#ale#infos',
        \ 'linter_warnings': 'lightline#ale#warnings',
        \ 'linter_errors': 'lightline#ale#errors',
        \ 'linter_ok' : 'lightline#ale#ok'
    \ },
    \ 'component_type': {
        \ 'buffers' : 'tabsel',
        \ 'linter_checking': 'right',
        \ 'linter_info': 'right',
        \ 'linter_warnings': 'warning',
        \ 'linter_errors' : 'error',
        \ 'linter_ok': 'right'
    \ },
    \ 'component_function': {
        \ 'readonly': 'LightlineReadonly',
    \ },
    \ 'component_raw' : {
        \ 'buffers': 1
    \ }
\ }
function! LightlineReadonly() 
    return &readonly && &filetype !=# 'help' ? 'RO' : ''
endfunction
let g:lightline#bufferline#show_number = 2
let g:lightline#bufferline#unnamed = '[no-name]'
"" bufferline
nmap <Leader>1 <Plug>lightline#bufferline#go(1)
nmap <Leader>2 <Plug>lightline#bufferline#go(2)
nmap <Leader>3 <Plug>lightline#bufferline#go(3)
nmap <Leader>4 <Plug>lightline#bufferline#go(4)
nmap <Leader>5 <Plug>lightline#bufferline#go(5)
nmap <Leader>6 <Plug>lightline#bufferline#go(6)
nmap <Leader>7 <Plug>lightline#bufferline#go(7)
nmap <Leader>8 <Plug>lightline#bufferline#go(8)
nmap <Leader>9 <Plug>lightline#bufferline#go(9)
nnoremap <leader>[ :bprev<CR>
nnoremap <leader>] :bnext<CR>
nnoremap <leader>q :b #<CR>:bd #<CR>

" NERD Tree
"" Press F2 to toggle NERDTree
noremap <F2> :NERDTreeToggle<CR>
"" Open NERDTree when Vim starts automatically
autocmd VimEnter * NERDTree | wincmd p
"" Close NERDTree when NERDTree is the last window automatically
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
"" Hide tips <Press ? for help>
let g:NERDTreeMinimalUI = 1
"" Show on the right
let g:NERDTreeWinPos = "right"
"" Change Enter actions
let g:NERTreeCustomOpenArgs = {
    \ 'file' : {
        \ 'where' : 'o',
        \ 'reuse' : 'currenttab',
        \ 'keepopen' : 1,
        \ 'stay' : 1 },
    \ 'dir' : {} }

" NERD git status
let g:NERDTreeGitStatusUseNerdFonts = 1
let g:NERDTreeGitStatusConcealBrackets = 1

" NERD Commenter
let g:NERDCreateDefaultMappings = 0
let g:NERDSpaceDelims = 1
nnoremap <space>lc :call nerdcommenter#Comment('n','Toggle')<CR>
vnoremap <space>lc :call nerdcommenter#Comment('x','Toggle')<CR>

" coc.nvim
let g:coc_config_home = "$XDG_CONFIG_HOME/nvim"
let g:coc_global_extensions = [
            \ 'coc-json',
            \ 'coc-vimlsp',
            \ 'coc-rust-analyzer',
            \ 'coc-calc',
            \ 'coc-toml',
            \ 'coc-lightbulb']
nnoremap <silent> <space>ld :call CocActionAsync('doHover')<cr>
"" Use <Tab> and <S-Tab> for navigate completion list                            
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"                        
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" ALE
"" dont use quickfix
let g:ale_set_loclist = 1
let g:ale_open_list = 1
"" coc.nvim
let g:ale_disable_lsp = 1

" Gutentags
let $GTAGSLABEL = 'native-pygments'
let $GTAGSCONF = 'C:/Users/Admin/gtags/gtags.conf'
let g:gutentags_project_root = ['.git', 'Cargo.toml', '.root']
let g:gutentags_ctags_tagfile = '.tags'
let g:gutentags_modules = []
if executable('ctags')
    let g:gutentags_modules += ['ctags']
endif
if executable('gtags-cscope') && executable('gtags')
    let g:gutentags_modules += ['gtags_cscope']
endif
let g:gutentags_cache_dir = expand('$XDG_CONFIG_HOME/tags')
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
let g:gutentags_ctags_extra_args += ['--output-format=e-ctags']
let g:gutentags_auto_add_gtags_cscope = 0
"" gutentags plus
let g:gutentags_plus_nomap = 1

" vim-clap
nnoremap <space>fb :Clap buffers<CR>
nnoremap <space>fcc :Clap command<CR>
nnoremap <space>fch :Clap command_history<CR>
nnoremap <space>fsh :Clap search_history<CR>
nnoremap <space>fff :Clap files<CR>
nnoremap <space>fft :Clap filetypes<CR>
nnoremap <space>fh :Clap help_tags<CR>
nnoremap <space>fH :Clap history<CR>
nnoremap <space>fj :Clap jumps<CR>
nnoremap <space>fl :Clap loclist<CR>
nnoremap <space>fL :Clap lines<CR>
nnoremap <space>fm :Clap marks<CR>
nnoremap <space>fM :Clap maps<CR>
nnoremap <space>fq :Clap quickfix<CR>
nnoremap <space>fy :Clap yanks<CR>
nnoremap <space>fr :Clap recent_files<CR>
nnoremap <space>fR :Clap registers<CR>
nnoremap <space>ft :Clap tags<CR>
nnoremap <space>fT :Clap proj_tags<CR>
nnoremap <space>fp :Clap providers<CR>
nnoremap <space>fw :Clap windows<CR>

" Vista.vim
let g:vista_sidebar_position = 'vertical topleft'
nnoremap <F3> :Vista!!<CR>

" Undo tree
nnoremap <F4> :UndotreeToggle<CR>
let g:undotree_HelpLine = 0

" Fugitive
nnoremap <space>gg :Git<CR>
nnoremap <space>gc :Git commit<CR>
nnoremap <space>gp :Git push<CR>
nnoremap <space>gd :Git diff<CR>
nnoremap <space>gf :Git fetch<CR>
nnoremap <space>gm :Git merge<CR>

" copy & paste outside
nnoremap <leader>c "+y
vnoremap <leader>c "+y
nnoremap <leader>v "+p
vnoremap <leader>v "+p

" window operations
nnoremap <space>1 1<c-w><c-w>
nnoremap <space>2 2<c-w><c-w>
nnoremap <space>3 3<c-w><c-w>
nnoremap <space>4 4<c-w><c-w>
nnoremap <space>5 5<c-w><c-w>
nnoremap <space>6 6<c-w><c-w>
nnoremap <space>7 7<c-w><c-w>
nnoremap <space>8 8<c-w><c-w>
nnoremap <space>9 9<c-w><c-w>
nnoremap <space>wc :close<CR>
nnoremap <space>wq :quit<CR>
nnoremap <space>wo :only<CR>
nnoremap <space>w<right> <c-w><right>
nnoremap <space>w<left> <c-w><left>
nnoremap <space>w<up> <c-w><up>
nnoremap <space>w<down> <c-w><down>

" save buffer
nnoremap <space>s :w<CR>

" quit
nnoremap <space>qq :q<CR>
nnoremap <space>qa :qa<CR>
nnoremap <space>qp :q!<CR>


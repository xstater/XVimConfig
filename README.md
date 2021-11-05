# XVimConfig
my vim configs

# Plugin
```
joshdick/onedark.vim
ajmwagar/vim-deus
scrooloose/nerdtree
Xuyuanp/nerdtree-git-plugin
preservim/nerdcommenter
neoclide/coc.nvim
sbdchd/neoformat
itchyny/lightline.vim
mengelbrecht/lightline-bufferline
dense-analysis/ale
maximbaz/lightline-ale
tpope/vim-fugitive
ludovicchabant/vim-gutentags
skywind3000/gutentags_plus
liuchengxu/vim-clap
liuchengxu/vista.vim
mbbill/undotree
mg979/vim-visual-multi
Yggdroot/indentLine
tpope/vim-surround
justinmk/vim-sneak
skywind3000/asyncrun.vim
skywind3000/asynctasks.vim
zhyu/clap-tasks
xstater/asynctasks-cargo.vim
```

# COC.NVIM Extensions
* coc-json
* coc-vimlsp
* coc-rust-analyzer
* coc-calc
* coc-toml
* coc-lightbulb

# Install for Neovim on Windows
1. Define 2 environment variables
```
XDG_CONFIG_HOME
XDG_DATA_HOME
```
2. Move nvim-data from `AppData` to `XDG_CONFIG_HOME`.
3. Clone this repo to `XDG_CONFIG_HOME`.
4. Rename `XVimConfig` to `nvim`.
5. Download `vimp-plug`, copy `plug.vim` to `nvim-data/site/autoload`.
6. Start neovim and ignore the error message.
7. Run :PlugInstall and wait for installing.

# Ctags support
Download Universal-Ctags for win32 and add it to your path

# todo
* Fix buffer control
* Add support for start screen
* Add key maping tips

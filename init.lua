require 'init_lazy'

if vim.g.vscode then 
    require 'vscode_neovim'
else
    require 'normal'
end

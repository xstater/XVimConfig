require 'init_lazy'

if vim.g.vscode then 
    require 'vscode'
else
    require 'normal'
end

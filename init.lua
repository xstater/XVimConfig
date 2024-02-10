vim.g.vscode = true

require 'init_lazy'

local sys_name = vim.loop.os_uname().sysname

if vim.g.vscode then 
    require 'vscode'
elseif sys_name == "Linux" then
    print "asdasd"
end

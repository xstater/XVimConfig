local function reveal(direction, reset_cursor)
    vim.api.nvim_call_function('VSCodeExtensionNotify', { 'reveal', direction, reset_cursor })
end

vim.keymap.set({ 'n' ,'v' },'z<CR>', function() reveal('top', true) end, { noremap = true })   
vim.keymap.set({ 'n' ,'v' },'zt', function() reveal('top', false) end, { noremap = true })   

vim.keymap.set({ 'n' ,'v' },'z.', function() reveal('center', true) end, { noremap = true })   
vim.keymap.set({ 'n' ,'v' },'zz', function() reveal('center', false) end, { noremap = true })

vim.keymap.set({ 'n' ,'v' },'z-', function() reveal('bottom', true) end, { noremap = true })
vim.keymap.set({ 'n' ,'v' },'zb', function() reveal('bottom', false) end, { noremap = true })   

local function move_cursor(to)
    vim.cmd [[:normal! m']]
    vim.api.nvim_call_function('VSCodeExtensionNotify', { 'move-cursor', to })
end

vim.keymap.set({ 'n' ,'v' },'H', function() move_cursor('top') end, { noremap = true })   
vim.keymap.set({ 'n' ,'v' },'M', function() move_cursor('middle') end, { noremap = true })   
vim.keymap.set({ 'n' ,'v' },'L', function() move_cursor('bottom') end, { noremap = true })   

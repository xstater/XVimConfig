-- trigger "Whcih Key" Plugin in VSCode
vim.keymap.set('n','<space>', "<Cmd>call VSCodeNotify('whichkey.show')<CR>", { noremap = true })
vim.keymap.set({ 'v', 'x' },'<space>', "<Cmd>call VSCodeNotify('whichkey.show')<CR>", { noremap = true })

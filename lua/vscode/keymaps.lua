-- trigger "Whcih Key" Plugin in VSCode
vim.keymap.set({ "n" ,"v" },"<space>", ":call VSCodeNotify('whichkey.show')<CR>", { noremap = true})
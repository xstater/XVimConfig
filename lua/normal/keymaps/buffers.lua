require 'which-key'.register({
    ["bl"] = { ":buffers<CR>", "List all buffers" },
    ["ba"] = { ":bprevious<CR>", "Swith to the previous buffer" },
    ["bd"] = { ":bnext<CR>", "Swith to the next buffer" },
    ["bc"] = { ":bdelete<CR>", "Close current buffer" },
    ["bC"] = { ":bdelete!<CR>", "Close current buffer (Force)" },
}, {
    mode = "n",
    prefix = "<leader>"
})

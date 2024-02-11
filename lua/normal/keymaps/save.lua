require 'which-key'.register({
    ["ss"] = { ":w<CR>", "Save current buffer" },
    ["sS"] = { ":wa<CR>", "Save all buffers" },
}, {
    mode = "n",
    prefix = "<leader>"
})

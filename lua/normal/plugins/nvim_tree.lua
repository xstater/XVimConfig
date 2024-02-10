require 'nvim-tree'.setup {
    view = {
        side = "right"
    }
}

require 'which-key'.register(
    {
        ["ft"] = { "<cmd>NvimTreeToggle<CR>", "Toggle file tree" }
    },
    {
        mode = "n",
        prefix = "<leader>"
    })

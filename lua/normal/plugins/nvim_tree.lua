require 'nvim-tree'.setup {
    view = {
        side = "right"
    }
}

require 'which-key'.add(
    {
        { "<leader>ft", "<cmd>NvimTreeToggle<CR>", desc = "Toggle file tree" },
    }
)

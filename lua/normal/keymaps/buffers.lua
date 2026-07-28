require 'which-key'.add(
    {
        { "<leader>bl", ":buffers<CR>", desc = "List all buffers" },
        { "<leader>ba", ":bprevious<CR>", desc = "Switch to the previous buffer" },
        { "<leader>bd", ":bnext<CR>", desc = "Switch to the next buffer" },
        { "<leader>bc", ":bdelete<CR>", desc = "Close current buffer" },
        { "<leader>bC", ":bdelete!<CR>", desc = "Close current buffer (Force)" },
    }
)

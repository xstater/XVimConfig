require 'which-key'.add(
    {
        { "<leader>ss", ":w<CR>", desc = "Save current buffer" },
        { "<leader>sS", ":wa<CR>", desc = "Save all buffers" },
    }
)

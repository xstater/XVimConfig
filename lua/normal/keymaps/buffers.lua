require 'which-key'.add(
    {
        {
            "<leader>bC",
            ":bdelete!<CR>",
            desc = "Close current buffer (Force)"
        },
        {
            "<leader>ba",
            ":bprevious<CR>",
            desc = "Swith to the previous buffer"
        },
        {
            "<leader>bc",
            ":bdelete<CR>",
            desc = "Close current buffer"
        },
        {
            "<leader>bd",
            ":bnext<CR>",
            desc = "Swith to the next buffer"
        },
        {
            "<leader>bl",
            ":buffers<CR>",
            desc = "List all buffers"
        },
    }
)

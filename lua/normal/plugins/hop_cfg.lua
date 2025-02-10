require 'hop'.setup {
    keys = 'fdsarewqcxztgvhjklyuiobnmp'
}

require 'which-key'.add(
    {
        { "<leader>ea", "<cmd>HopAnywhere<CR>", desc = "Move to Anywhere" },
        { "<leader>ew", "<cmd>HopWord<CR>",     desc = "Move to any Word" },
        { "<leader>ec", "<cmd>HopChar2<CR>",    desc = "Move to 2 characters" },
        { "<leader>el", "<cmd>HopLine<CR>",     desc = "Move to any Line" },
    }
)

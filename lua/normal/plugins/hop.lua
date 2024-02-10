require 'hop'.setup {
    keys = 'etovxqpdygfblzhckisuran'
}

require 'which-key'.register(
    {
        ["ea"] = { "<cmd>HopAnywhere<CR>", "Move to Anywhere" },
        ["ew"] = { "<cmd>HopWord<CR>", "Move to any Word" },
        ["el"] = { "<cmd>HopLine<CR>", "Move to any Line" },
        ["ec"] = { "<cmd>HopChar2<CR>", "Move to 2 characters" },
    },
    {
        mode = "n",
        prefix = "<leader>"
    })

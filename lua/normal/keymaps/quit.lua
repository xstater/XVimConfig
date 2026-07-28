require 'which-key'.add(
    {
        { "<leader>qA", ":qa!<CR>", desc = "Quit all (Force)" },
        { "<leader>qQ", ":q!<CR>",  desc = "Quit current (Force)" },
        { "<leader>qa", ":qa<CR>",  desc = "Quit all" },
        { "<leader>qq", ":q<CR>",   desc = "Quit current" },
        { "<leader>qw", ":wq<CR>",  desc = "Quit and Save" },
    }
)

require 'which-key'.add(
{
    { "<leader>qa", ":qa<CR>", desc = "Quit all" },
    { "<leader>qA", ":qa!<CR>", desc = "Quit all (Force)" },
    { "<leader>qq", ":q<CR>", desc = "Quit current" },
    { "<leader>qQ", ":q!<CR>", desc = "Quit current (Force)" },
    { "<leader>qw", ":wq<CR>", desc = "Quit and Save" },
})

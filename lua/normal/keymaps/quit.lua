require 'which-key'.register({
    ["qa"] = { ":qa<CR>", "Quit all" },
    ["qA"] = { ":qa!<CR>", "Quit all (Force)" },
    ["qq"] = { ":q<CR>", "Quit current" },
    ["qQ"] = { ":q!<CR>", "Quit current (Force)" },
    ["qw"] = { ":wq<CR>", "Quit and Save" },
}, {
    mode = "n",
    prefix = "<leader>"
})

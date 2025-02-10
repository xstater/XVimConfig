local which_key = require 'which-key'

which_key.add(
    -- just define all groups
    {
        { "<leader>b", group = "+Buffer" },
        { "<leader>e", group = "+Easy Motions" },
        { "<leader>f", group = "+Fuzzy/+Files" },
        { "<leader>g", group = "+Git" },
        { "<leader>l", group = "+Language(Not Complete)" },
        { "<leader>q", group = "+Quit" },
        { "<leader>s", group = "+Save" },
    }
)

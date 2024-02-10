local which_key = require 'which-key'

which_key.register(
    -- just define all groups
    {
        b = { name = "+Buffer" },
        e = { name = "+Easy Motions" },
        f = { name = "+Fuzzy/+Files" },
        q = { name = "+Quit" },
    },
    { prefix = "<leader>" })

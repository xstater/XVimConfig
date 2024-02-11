local which_key = require 'which-key'

which_key.register(
    -- just define all groups
    {
        b = { name = "+Buffer" },
        e = { name = "+Easy Motions" },
        f = { name = "+Fuzzy/+Files" },
        l = { name = "+Language(Not Complete)" },
        q = { name = "+Quit" },
        s = { name = "+Save" },
    },
    { prefix = "<leader>" })

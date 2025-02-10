local terminal = require 'toggleterm.terminal'.Terminal
local gitui = terminal:new {
    cmd = "gitui",
    direction = "float",
    hidden = true
}

function GitUIToggle()
    gitui:toggle()
end

require 'which-key'.add(
    {
        { "<leader>gg", "<cmd>lua GitUIToggle()<CR>", desc = "Open GitUI" },
    }
)

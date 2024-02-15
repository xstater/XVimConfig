local terminal = require 'toggleterm.terminal'.Terminal
local gitui = terminal:new {
    cmd = "gitui",
    direction = "float",
    hidden = true
}

function gitui_toggle()
    gitui:toggle()
end

require 'which-key'.register({
    ["gg"] = { "<cmd>lua gitui_toggle()<CR>", "Open GitUI" },
}, {
    mode = "n",
    prefix = "<leader>"
})

local lspconfig = require 'lspconfig'

-- keymaps
-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
require 'which-key'.register({
    ["le"] = { vim.diagnostic.open_float, "Open Float Hover Window" },
}, {
    mode = "n",
    prefix = "<leader>"
})

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)
        require 'which-key'.register({
            ["lr"] = { vim.lsp.rename, "Rename" },
            ["la"] = { vim.lsp.buf.code_action, "Execute code action" },
            ["lf"] = {
                function()
                    vim.lsp.buf.format { async = true }
                end,
                "Format code" },
        }, {
            mode = "n",
            prefix = "<leader>",
            buffer = ev.buf
        })

        require 'which-key'.register({
            ["la"] = { vim.lsp.buf.code_action, "Execute code action" },
        }, {
            mode = "v",
            prefix = "<leader>",
            buffer = ev.buf
        })
    end
})

local lspconfig = require 'lspconfig'

-- keymaps
-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
require 'which-key'.add(
{
    { "<leader>le", vim.diagnostic.open_float, desc = "Open Float Hover Window" }
})

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)
        -- todo : add new keymaps
    end
})

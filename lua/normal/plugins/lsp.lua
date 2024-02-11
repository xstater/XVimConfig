local lspconfig = require 'lspconfig'

-- keymaps
-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
require 'which-key'.register({
    ["le"] = { vim.diagnostic.open_float, "Open Float Hover Window" },
    -- vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
    -- vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
    -- vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
    -- vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)
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

        -- Enable completion triggered by <c-x><c-o>
        -- vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

        -- Buffer local mappings.
        -- See `:help vim.lsp.*` for documentation on any of the below functions
        -- local opts = { buffer = ev.buf }
        -- vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
        -- vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        -- vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        -- vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
        -- vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
        -- vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
        -- vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
        -- vim.keymap.set('n', '<space>wl', function()
        --   print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
        -- end, opts)
        -- vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
        -- vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
        -- vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
        -- vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
        -- vim.keymap.set('n', '<space>f', function()
        --   vim.lsp.buf.format { async = true }
        -- end, opts)
    end
})

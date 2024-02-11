local capabilities = require 'cmp_nvim_lsp'.default_capabilities()
local lspconfig = require 'lspconfig'

lspconfig.nushell.setup {
    capabilities = capabilities
}

lspconfig.rust_analyzer.setup {
    -- Server-specific settings. See `:help lspconfig-setup`
    settings = {
        ['rust-analyzer'] = {},
    },
}

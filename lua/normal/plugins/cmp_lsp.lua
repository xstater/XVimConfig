local capabilities = require 'cmp_nvim_lsp'.default_capabilities()

vim.lsp.config('*', {
  capabilities = capabilities,
})

-- 为特定服务器定制个性化参数
vim.lsp.config('rust_analyzer', {
  settings = {
    ['rust-analyzer'] = {},
  },
})
-- 启用指定的 LSP 服务器（支持传入字符串或服务器名称列表）
vim.lsp.enable({ 'nushell', 'rust_analyzer' })
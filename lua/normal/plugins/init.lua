require 'lazy'.setup({
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
        config = function()
            vim.cmd [[colorscheme tokyonight-night]]
        end
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require 'normal/plugins/lua_line'
        end
    },
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        },
        config = function()
            require 'normal/plugins/which_key'
        end
    },
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require 'normal/plugins/nvim_tree'
        end
    },
    {
        'phaazon/hop.nvim',
        branch = 'v2',
        config = function()
            require 'normal.plugins.hop'
        end
    },
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            require 'normal.plugins.telescope'
        end
    },
    {
        'hrsh7th/nvim-cmp',
        config = function()
            require 'normal.plugins.cmp'
        end
    },
    {
        'hrsh7th/cmp-path',
        dependencies = { 'hrsh7th/nvim-cmp' },
    },
    {
        'hrsh7th/cmp-calc',
        dependencies = { 'hrsh7th/nvim-cmp' }
    },
    {
        'hrsh7th/cmp-buffer',
        dependencies = { 'hrsh7th/nvim-cmp' }
    },
    {
        'hrsh7th/cmp-cmdline',
        dependencies = { 'hrsh7th/nvim-cmp' }
    },
    {
        'hrsh7th/cmp-nvim-lua',
        dependencies = { 'hrsh7th/nvim-cmp' }
    },
    {
        'neovim/nvim-lspconfig',
        config = function()
            require 'normal.plugins.lsp'
        end
    },
    {
        'hrsh7th/cmp-nvim-lsp',
        dependencies = {
            'hrsh7th/nvim-cmp',
            'neovim/nvim-lspconfig'
        },
        config = function()
            require 'normal.plugins.cmp_lsp'
        end
    },
})

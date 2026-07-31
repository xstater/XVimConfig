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
        'smoka7/hop.nvim',
        version = "*",
        config = function()
            require 'normal.plugins.hop_cfg'
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
        'akinsho/toggleterm.nvim',
        version = "*"
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
    -- F# support
    'ionide/Ionide-vim',
    ft = { 'fsharp', 'fsharp_project' },
    config = function()
        -- if you need extra configuration/events, example with 'Show tooltips on CursorHold'
        -- vim.api.nvim_create_autocmd({ 'CursorHold' }, {
        --   pattern = { '*.fs', '*.fsi', '*.fsx' },
        --   callback = function()
        --     vim.fn['fsharp#showTooltip']()
        --  end,
        -- })
        
        -- Show fsi in horizontal split
        -- vim.g["fsharp#fsi_window_command"] = "vnew"
    end
})

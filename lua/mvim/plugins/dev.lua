-- These are plugins that are essential to development

return {
        -- Highlighting
        {
                "nvim-treesitter/nvim-treesitter",
                build = ":TSUpdate",
                event = "VeryLazy",
                config = function()
                        require("nvim-treesitter.configs").setup({
                                highlight = { enable = true },
                                indent = { enable = true }
                        })
                end,
        },
        -- LSP
        {
                "neovim/nvim-lspconfig",
                "williamboman/mason.nvim",
                "williamboman/mason-lspconfig.nvim",
        },
        -- Completion
        {
                "hrsh7th/nvim-cmp",
                "hrsh7th/cmp-nvim-lsp",
                { "L3MON4D3/LuaSnip", lazy = true },
        },
        -- Mini modules
        {
                "echasnovski/mini.pairs",
                event = "VeryLazy"
        }
}

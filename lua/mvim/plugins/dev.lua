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
                {
                        "mason-org/mason.nvim",
                        config = function()
                                require("mason").setup()
                        end,
                },
                {
                        "mason-org/mason-lspconfig.nvim",
                        config = function()
                                require("mason-lspconfig").setup_handlers {
                                        -- The first entry (hithout a key) will be the default handler
                                        -- and will be called for each installed server that doesn"t have
                                        -- a dedicated handler.
                                        function(server_name) -- default handler (optional)
                                                require("lspconfig")[server_name].setup {}
                                        end
                                }
                        end,
                },
        },
        {
                "hrsh7th/nvim-cmp",
                config = function()
                        local cmp = require("cmp")
                        cmp.setup {
                                sources = {
                                        { name = "nvim_lsp" },
                                        { name = "path" },
                                        { name = "buffer" }
                                },
                                mapping = {
                                        ["<C-n>"] = cmp.mapping.select_next_item { behavior = cmp.SelectBehavior.Insert },
                                        ["<C-p>"] = cmp.mapping.select_prev_item { behavior = cmp.SelectBehavior.Insert },
                                        ["<Tab>"] = cmp.mapping.confirm {
                                                behavior = cmp.ConfirmBehavior.Insert,
                                                select = true,
                                        }
                                }
                        }
                end,
        },

        "hrsh7th/cmp-nvim-lsp",
        { "L3MON4D3/LuaSnip", lazy = true },
        -- Mini modules
        {
                "echasnovski/mini.pairs",
                event = "VeryLazy",
                config = function()
                        require('mini.pairs').setup()
                end,
        },
        { "L3MON4D3/LuaSnip", lazy = true },
        -- Mini modules
        {
                "echasnovski/mini.pairs",
                config = function()
                        require('mini.pairs').setup()
                end,
                event = "VeryLazy"
        }
}

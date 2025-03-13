-- This is a file to initialize all the plugins and change settings if needed.
require("config.options")
require("config.mappings")

-- Treesitter setup
require("nvim-treesitter.configs").setup({
    highlight = { enable = true },
    indent = { enable = true }
})

-- Mason setup
require("mason").setup()
require("mason-lspconfig").setup()

require("mason-lspconfig").setup_handlers {
    -- The first entry (without a key) will be the default handler
    -- and will be called for each installed server that doesn"t have
    -- a dedicated handler.
    function(server_name)      -- default handler (optional)
        require("lspconfig")[server_name].setup {}
    end,
}

-- cmp setup
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

-- Mini pairs 
require('mini.pairs').setup()

-- Which key
require("which-key").setup()

-- Gitsigns
require('gitsigns').setup()

-- Grug
require('grug-far').setup()

-- Lualine
require('lualine').setup()

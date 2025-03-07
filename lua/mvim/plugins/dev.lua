-- These are plugins that are essential to development

return {
    -- Highlighting
    {"nvim-treesitter/nvim-treesitter"},
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
        "L3MON4D3/LuaSnip",
    },
    -- Mini modules
    {
        "echasnovski/mini.pairs",
    }
}
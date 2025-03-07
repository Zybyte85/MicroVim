return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        },
    },
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' },
        opts = {
            pickers = {
                find_files = {
                    theme = "dropdown"
                }
            }
        },
    },
    {
        "folke/which-key.nvim",
        event = "VeryLazy"
    },
    {
        "NeogitOrg/neogit",
    	dependencies = {
    		"nvim-lua/plenary.nvim",         -- required
    		"sindrets/diffview.nvim",        -- optional - Diff integration
    		"nvim-telescope/telescope.nvim", -- optional
        },
    config = true
    },
    {
	"MagicDuck/grug-far.nvim"
    }
}

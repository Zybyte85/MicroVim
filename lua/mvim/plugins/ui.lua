return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {}
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		---@module "ibl"
		---@type ibl.config
		opts = {},
	},
	{
		"folke/snacks.nvim",
		---@type snacks.Config
		opts = {
			dashboard = {
				preset = {
					header = [[
 __  __ _          __   ___       
|  \/  (_)__ _ _ __\ \ / (_)_ __  
| |\/| | / _| '_/ _ \ V /| | '  \ 
|_|  |_|_\__|_| \___/\_/ |_|_|_|_|
					]],
				},
			}
		}
	},
	{
		"lewis6991/gitsigns.nvim"
	}
}

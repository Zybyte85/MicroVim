return {
	{
		"folke/tokyonight.nvim",
		lazy = true,
	},
	{
		"folke/snacks.nvim",
		---@type snacks.Config
		opts = {
		        indent = {
		                enabled = true
		        },
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

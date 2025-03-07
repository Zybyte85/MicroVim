-- MicroVim init file
-- This file is mainly used to load other files

require("mvim.config.options")
require("mvim.config.lazy")
require("mvim.init")

require("mvim.config.mappings")

vim.cmd("colorscheme " .. vim.g.default_colorscheme)
-- MicroVim options
-- Here you can set global options for MicroVim

-- Set the default colorscheme
vim.g.default_colorscheme = "tokyonight-night"

-- Options
vim.opt.clipboard = "unnamedplus" -- Connect to the system clipboard
vim.opt.cursorline = true -- Highlight the current line
vim.opt.number = true -- Show line numbers
vim.opt.relativenumber = true -- Show relative line numbers
vim.opt.termguicolors = true -- Use colors in terminal
vim.opt.copyindent = true -- Copy the indentation from the previous line

-- Global options
vim.g.mapleader = " " -- Set the leader key to space
vim.g.maplocalleader = "\\"
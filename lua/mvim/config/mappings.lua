-- MicroVim mappings
-- Here you can set mappings for MicroVim

-- Which-key
local wk = require("which-key")

-- Open error float
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = "Open error float" })

-- Format buffer or selection
vim.keymap.set({ 'n', 'v' }, '<leader>f', vim.lsp.buf.format, { desc = "Format buffer or selection"})

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- Window navigation
-- These are for moving between active windows
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', {noremap = true, silent = true})

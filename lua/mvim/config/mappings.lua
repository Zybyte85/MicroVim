-- MicroVim mappings

-- Which-key
local wk = require("which-key")

-- Open error float
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = "Open error float" })

-- Format buffer or selection
vim.keymap.set({ 'n', 'v' }, '<leader>f', vim.lsp.buf.format, { desc = "Format buffer or selection" })

wk.add({
        -- Telescope
        { "<leader>f",  group = "Telescope" },
        { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files" },
        { "<leader>fg", "<cmd>Telescope live_grep<cr>",  desc = "Live grep" },
        { "<leader>fb", "<cmd>Telescope buffers<cr>",    desc = "Buffers" },
        { "<leader>fh", "<cmd>Telescope help_tags<cr>",  desc = "Help tags" },
        { "<leader>sr", "<cmd>GrugFar<cr>", desc = "Find and replace"}
})

-- Window navigation
-- These are for moving between active windows
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })

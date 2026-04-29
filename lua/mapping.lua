local opts = { noremap = true, silent = true }

vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
vim.keymap.set("n", "<Leader>fo", ":lua vim.lsp.buf.format()<CR>", opts)

-- Neotree
vim.keymap.set('n', '<Leader>e', ':Neotree float focus toggle<CR>', opts)
vim.keymap.set('n', '<Leader>n', ':Neotree left toggle<CR>', opts)

-- Telescope
vim.keymap.set('n', '<Leader>ff', ":Telescope find_files<CR>", { desc = 'Telescope find files' })
vim.keymap.set('n', '<Leader>fg', ":Telescope live_grep<CR>", { desc = 'Telescope live grep' })
vim.keymap.set('n', '<Leader>fb', ":Telescope buffers<CR>", { desc = 'Telescope buffers' })
vim.keymap.set('n', '<Leader>fh', ":Telescope help_tags<CR>", { desc = 'Telescope help tags' })

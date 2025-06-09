-- Keymaps for neovim only (no plugin mapping)
-- vim.keymap.set('n', '<Leader>ex1', '<cmd>echo "Example 1"<cr>')

-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set('i', 'jk', '<Esc>')
vim.keymap.set("n", "<leader>w", "<cmd>w<CR>")
vim.keymap.set("n", "<leader>n", "<cmd>set relativenumber!<CR>")
vim.keymap.set("n", "<leader>c", "<cmd>bd<CR>")

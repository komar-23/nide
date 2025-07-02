-- Keymaps for neovim only (no plugin mapping)
-- vim.keymap.set('n', '<Leader>ex1', '<cmd>echo "Example 1"<cr>')

-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- vim.keymap.set('i', 'jk', '<Esc>', {desc = 'Back to normal mode'})
vim.keymap.set("n", "ZW", "<cmd>w<CR>",  {desc = 'Write buffer'})
vim.keymap.set("n", "<leader>n", "<cmd>set relativenumber!<CR>", {desc = 'Toggle relative numbers'})
vim.keymap.set("n", "ZD", "<cmd>bd<CR>", {desc = 'Close buffer'})

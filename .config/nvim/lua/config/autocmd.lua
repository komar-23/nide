-- Highlight yanked text
vim.api.nvim_create_autocmd("TextYankPost", {
  group = augroup,
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Change relative numbers to number when insert mode
vim.api.nvim_create_augroup("toggle_relative_number", { clear = true })

vim.api.nvim_create_autocmd("InsertEnter", {
  group = "toggle_relative_number",
  pattern = "*",
  callback = function()
    vim.opt_local.relativenumber = false
  end,
})

vim.api.nvim_create_autocmd("InsertLeave", {
  group = "toggle_relative_number",
  pattern = "*",
  callback = function()
    vim.opt_local.relativenumber = true
  end,
})

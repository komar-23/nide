return {
  'sQVe/sort.nvim',
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    vim.keymap.set('v', 'gs', '<cmd>Sort<cr>')
  end
}

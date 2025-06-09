return {
  'rhysd/clever-f.vim',
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    vim.keymap.set("n", ";", "<Plug>(clever-f-repeat-forward)", {remap = true})
    vim.keymap.set("n", ",", "<Plug>(clever-f-repeat-back)", {remap = true})
  end
}

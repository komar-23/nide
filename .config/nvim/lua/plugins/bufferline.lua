return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  opts = { -- require("bufferline").setup(opts)
    options = {
      -- mode = "tabs",
      separator_style = "slant",

      numbers = function(opts)
        return string.format('%s', opts.raise(opts.id))
      end
    }
  },
}

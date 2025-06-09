return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup()
      -- disable netrw at the very start of your init.lua
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    -- optionally enable 24-bit colour
    vim.opt.termguicolors = true

    -- set keymaps
    local keymap = vim.keymap
    keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = 'Toggle NVIM Tree' })
    keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = 'Toggle NVIM Tree find file' })
    keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = 'Collapse NVIM Tree' })
    keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = 'Refresh NVIM Tree' })
  end
}

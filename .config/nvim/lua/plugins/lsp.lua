return {
  "mason-org/mason-lspconfig.nvim",
  opts = {
    ensure_installed = { "lua_ls" },
    -- Above is equivalent of:
    -- require("mason-lspconfig").setup {
    --   ensure_installed = { "lua_ls" },
    -- }
  },
  dependencies = {
    { "mason-org/mason.nvim",
      opts = {},
      keys = {
        { "<leader>mm", "<cmd>Mason<cr>", desc = "LSP management", mode = "n"}
      }
    },
    { "neovim/nvim-lspconfig",
      -- keys = {
      --   { "K", "vim.lsp.buf.hover", desc = "Display hover information", mode = "n"},
      --   { "<leader>gd", "vim.lsp.buf.type_definition", desc = "Display definition", mode = "n"},
      --   { "<leader>ca", "vim.lsp.buf.code_action", desc = "Code action", mode = { "n", "v"} },
      -- }
    },
  },
}

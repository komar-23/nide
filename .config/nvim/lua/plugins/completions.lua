return {
  -- Autocompletion
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/cmp-path" },
  -- Snippets
  {
    "L3MON4D3/LuaSnip",
    depencencies = {
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",
      version = "v2.*",
      build = "make install_jsregexp",
      config = function()
        -- require("luasnip").filetype_extend("ruby", { "rails" })
        require("luasnip.loaders.from_vscode").lazy_load()
      end,
    },
  },
  -- Autocompletion
  {
    "hrsh7th/nvim-cmp",
    config = function()
      local cmp = require("cmp")

      cmp.setup({
        snippet = {
          -- REQUIRED - you must specify a snippet engine
          expand = function(args)
            require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
            vim.snippet.expand(args.body)
          end,
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-e>"] = cmp.mapping.abort(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" }, -- For luasnip users.
          { name = "buffer" },
          { name = "path" },
        }),
      })
    end,
  },
}

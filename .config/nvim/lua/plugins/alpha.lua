return {
  "goolord/alpha-nvim",
  -- dependencies = { 'echasnovski/mini.icons' },
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  -- config = function()
    -- require'alpha'.setup(require'alpha.themes.dashboard'.config)
    -- local startify = require("alpha.themes.startify")
    -- startify.file_icons.provider = "devicons"
    -- require("alpha").setup(
    --   startify.config
    -- )
  -- end
  config = function ()
    vim.keymap.set('n', '<leader>ss', '<cmd>Alpha<cr>', {desc = 'Main menu'})
    local alpha = require'alpha'
    local dashboard = require'alpha.themes.dashboard' dashboard.section.header.val = {
      -- [[                                                      ]],
      -- [[      ___                       ___           ___     ]],
      -- [[     /\__\          ___        /\  \         /\  \    ]],
      -- [[    /::|  |        /\  \      /::\  \       /::\  \   ]],
      -- [[   /:|:|  |        \:\  \    /:/\:\  \     /:/\:\  \  ]],
      -- [[  /:/|:|  |__      /::\__\  /:/  \:\__\   /::\~\:\  \ ]],
      -- [[ /:/ |:| /\__\  __/:/\/__/ /:/__/ \:|__| /:/\:\ \:\__\]],
      -- [[ \/__|:|/:/  / /\/:/  /    \:\  \ /:/  / \:\~\:\ \/__/]],
      -- [[     |:/:/  /  \::/__/      \:\  /:/  /   \:\ \:\__\  ]],
      -- [[     |::/  /    \:\__\       \:\/:/  /     \:\ \/__/  ]],
      -- [[     /:/  /      \/__/        \::/__/       \:\__\    ]],
      -- [[     \/__/                     ~~            \/__/    ]],
      -- [[                                                      ]],

      [[                                                                       ]],
      [[                                                                     ]],
      [[       ████ ██████           █████      ██                     ]],
      [[      ███████████             █████                             ]],
      [[      █████████ ███████████████████ ███   ███████████   ]],
      [[     █████████  ███    █████████████ █████ ██████████████   ]],
      [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
      [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
      [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
      [[                                                                       ]],
    }
    dashboard.section.buttons.val = {
      dashboard.button( "e", "  New file" , ":ene <BAR> startinsert <CR>"),
      dashboard.button( "Space ee", "󰙅  Open explorer" , "<cmd>NvimTreeToggle<CR>>"),
      dashboard.button( "Space ff", "  Find file" , " ff"),
      dashboard.button( "Space fg", "󰈞  Find word" , " fg"),
      dashboard.button( "Space fh", "󰋗  Find help" , " fh"),
      dashboard.button( "Space ww", "󰖬  Wiki" , " ww"),
      dashboard.button( "Space ml", "  Plugins managment" , " ml"),
      dashboard.button( "Space mp", "  LSP management" , " mp"),
      dashboard.button( "q", "󰅚  Quit NVIM" , ":qa<CR>"),
    }
    local handle = io.popen('fortune')
    local fortune = handle:read("*a")
    handle:close()
    dashboard.section.footer.val = fortune

    dashboard.config.opts.noautocmd = true

    vim.cmd[[autocmd User AlphaReady echo 'ready']]

    alpha.setup(dashboard.config)
  end
}

-- Options for neovim only (no plugin options)
-- Examples:
-- vim.opt.smarttab = true (or equivalent vin
-- vim.opt.smarttab = false
-- vim.opt.wildignore = { '*.o', '*.a', '__pycache__' }

-- No compatibility with vi
vim.o.compatible = false

-- Use encoding that supports Unicode
vim.o.encoding='utf-8'

-- The shell used to execute commands
vim.o.shell='/bin/bash'

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- Make line numbers default
vim.o.number = true
vim.o.relativenumber = true

-- Always show cursor position.
vim.o.ruler = true

-- No backup file will be created
vim.o.backup = false

-- Enable mouse mode, can be useful for resizing splits for example!
vim.o.mouse = 'a'

-- Don't show the mode, since it's already in the status line
vim.o.showmode = false

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function()
  vim.o.clipboard = 'unnamedplus'
end)

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.o.ignorecase = true
vim.o.smartcase = true

-- Dont wrap lines.
vim.o.wrap = false

-- Keep signcolumn on by default
vim.o.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250

-- Decrease mapped sequence wait time
vim.o.timeoutlen = 300

-- Configure how new splits should be opened
vim.o.splitright = true
vim.o.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
--
--  Notice listchars is set using `vim.opt` instead of `vim.o`.
--  It is very similar to `vim.o` but offers an interface for conveniently interacting with tables.
--   See `:help lua-options`
--   and `:help lua-options-guide`
vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.o.inccommand = 'split'

-- Show which line your cursor is on
vim.o.cursorline = true

-- Show which column your cursor is on
vim.o.cursorcolumn = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 10

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
-- See `:help 'confirm'`
-- vim.o.confirm = true
-- Tabs config
vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.expandtab = true
vim.o.softtabstop = -1
vim.o.smarttab = true
vim.o.autoindent = true
vim.o.smartindent = true

vim.o.incsearch = true

vim.o.ignorecase = true

vim.o.smartcase = true

vim.o.showcmd = false

vim.o.showmatch = true

vim.o.hlsearch = true

vim.o.history = 1000

vim.o.wildmenu = true

vim.opt.wildignore = { '*.o', '*.a', '*.docx', '*.jpg', '*.png', '*.gif', '*.pdf', '*.pyc', '*.exe', '*.flv', '*.img', '*.xlsx'}

vim.opt.nrformats = { 'alpha', 'octal', 'hex', 'bin'}

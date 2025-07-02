return {
	"mason-org/mason-lspconfig.nvim",
	opts = {
		ensure_installed = { "lua_ls", "ruff", "pyright", "bashls" },
		-- Above is equivalent of:
		-- require("mason-lspconfig").setup {
		--   ensure_installed = { "lua_ls" },
		-- }
	},
	dependencies = {
		{
			"mason-org/mason.nvim",
			config = true,
			opts = {},
			keys = {
				{ "<leader>ml", "<cmd>Mason<cr>", desc = "LSP management", mode = "n" },
			},
		},
		{
			"neovim/nvim-lspconfig",
			config = function()
				--local on_attach = config.on_attach
				local capabilities = require("cmp_nvim_lsp").default_capabilities()
				-- vim.lsp.config('lua_ls', {
				-- settings = {
				--   ['lua-ls'] = {},
				-- },
				-- })
				-- LSP and diagnostic configuration
				vim.diagnostic.config({
					virtual_text = true,
					signs = true,
					underline = true,
					update_in_insert = false,
					severity_sort = true,
				})

				vim.lsp.config("lua_ls", {
					on_attach = on_attach,
					capabilities = capabilities,
					filetypes = { "lua" },
				})
				vim.lsp.config("ruff", {
					on_attach = on_attach,
					capabilities = capabilities,
					filetypes = { "python" },
				})
				vim.lsp.config("pyright", {
					on_attach = on_attach,
					capabilities = capabilities,
					filetypes = { "python" },
					-- on_attach
					settings = {
						["pyright"] = {
							python = {
								analysis = {
									autoSearchPaths = true,
									diagnosticMode = "openFilesOnly",
									useLibraryCodeForTypes = true,
								},
							},
						},
					},
				})

				vim.lsp.config("bashls", {
					on_attach = on_attach,
					capabilities = capabilities,
					filetypes = { "bash", "sh" },
				})

				-- vim.lsp.config("clang", {
				-- 	cmd = { "/usr/local/bin/clangd" }, -- <-- use your full path
				-- 	filetypes = { "c", "cpp", "objc", "objcpp" },
				-- 	root_dir = require("lspconfig.util").root_pattern("compile_commands.json", ".git"),
				-- })
				local lspconfig = require("lspconfig")

				-- Configure clangd
				lspconfig.clangd.setup({
					cmd = { "/usr/local/bin/clangd" }, -- Replace with the path to your compiled clangd
					filetypes = { "c", "cpp", "objc", "objcpp" },
					root_dir = lspconfig.util.root_pattern("compile_commands.json", ".git"),
				})

				vim.keymap.set("n", "<leader>ci", vim.lsp.buf.hover, { desc = "Display hover information" })
				vim.keymap.set("n", "<leader>cd", vim.lsp.buf.type_definition, { desc = "Display definition" })
				vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
			end,
			-- keys = {
			--   { "K", "vim.lsp.buf.hover", desc = "Display hover information", mode = "n"},
			--   { "<leader>md", "vim.lsp.buf.type_definition", desc = "Display definition", mode = "n"},
			--   { "<leader>mc", "vim.lsp.buf.code_action", desc = "Code action", mode = { "n", "v"} },
			-- }
		},
	},
}

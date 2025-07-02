return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.diagnostics.mypy,
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.shfmt,
				-- null_ls.builtins.diagnostics.ruff,
			},
		})
		vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, { desc = "Code formatting" })
	end,
}

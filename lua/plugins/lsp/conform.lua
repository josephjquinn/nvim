return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				javascript = { "prettier" },
				typescript = { "prettier" },
				javascriptreact = { "prettier" },
				typescriptreact = { "prettier" },
				svelte = { "prettier" },
				css = { "prettier" },
				html = { "prettier" },
				json = { "prettier" },
				yaml = { "prettier" },
				markdown = { "prettier" },
				graphql = { "prettier" },
				liquid = { "prettier" },
				lua = { "stylua" },
				java = { "google_java_format" },
				tex = { "latexindent" },
				python = {
					"ruff_fix", -- To fix lint errors. (ruff with argument --fix)
					"ruff_format", -- To run the formatter. (ruff with argument format)
					-- "black"
				},
				cpp = { "clang_format" },
			},
		})

		vim.keymap.set({ "n", "v" }, "<leader>ll", function()
			conform.format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 10000,
			})
		end, { desc = "Format file or range (in visual mode)" })
	end,
}

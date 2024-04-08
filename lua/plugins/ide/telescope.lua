local config = function()
	local telescope = require("telescope")
	telescope.setup({
		defaults = {
			mappings = {
				i = {
					["<C-j>"] = "move_selection_next",
					["<C-k>"] = "move_selection_previous",
				},
			},
		},
		pickers = {
			find_files = {
				previewer = true,
				hidden = false,
				file_ignore_patterns = { "node_modules" },
			},
			live_grep = {
				previewer = true,
			},
			buffers = {
				theme = "dropdown",
				previewer = false,
			},
			colorscheme = {
				enable_preview = true,
			},
		},
	})
end

return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.3",
		lazy = false,
		dependencies = { "nvim-lua/plenary.nvim" },
		config = config,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}

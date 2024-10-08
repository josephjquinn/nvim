return {
	"kawre/leetcode.nvim",
	build = ":TSUpdate html",
	dependencies = {
		"nvim-telescope/telescope.nvim",
		"nvim-lua/plenary.nvim", -- required by telescope
		"MunifTanjim/nui.nvim",

		-- optional
		"nvim-treesitter/nvim-treesitter",
		-- "rcarriga/nvim-notify",
		"nvim-tree/nvim-web-devicons",
	},
	opts = {
		arg = "lc",
		lang = "python3",
		storage = {
			home = vim.fn.getcwd(),
			cache = vim.fn.stdpath("cache") .. "/leetcode",
		},

		injector = {
			---@type table<lc.lang, lc.inject>
			["python3"] = {
				before = [[
from typing import List
from collections import defaultdict
]],
			},
		},
	},
}

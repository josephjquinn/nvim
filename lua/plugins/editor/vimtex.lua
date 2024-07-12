return {
	"lervag/vimtex",
	lazy = false, -- we don't want to lazy load VimTeX
	-- tag = "v2.15", -- uncomment to pin to a specific release
	init = function()
		-- VimTeX configuration goes here, e.g.
		vim.g.vimtex_view_method = "skim"
		vim.g.vimtex_quickfix_open_on_warning = 0
		vim.g.vimtex_compiler_latexmk = {
			aux_dir = "./aux",
			out_dir = "./out",
			-- callback = 1,
			-- continuous = 1,
			-- executable = "latexmk",
			-- hooks = {},
			-- options = {
			-- 	"-verbose",
			-- 	"-file-line-error",
			-- 	"-synctex=1",
			-- 	"-interaction=nonstopmode",
			-- },
		}
	end,
}

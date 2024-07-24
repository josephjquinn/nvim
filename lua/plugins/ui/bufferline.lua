--- @type LazyPluginSpec
return {
	"akinsho/bufferline.nvim",
	branch = "main",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		vim.keymap.set("n", "<leader><Tab>", ":BufferLineCycleNext <CR>", { silent = true, desc = "Cycle tabs" })

		local bufferline = require("bufferline")
		require("transparent").clear_prefix("BufferLine")

		bufferline.setup({
			options = {
				mode = "buffers",
				style_preset = bufferline.style_preset.default,
				themable = true,
				numbers = "none",
				indicator = {
					icon = "⏽",
					style = "icon",
				},
				show_buffer_close_icons = false,
				show_close_icon = false,
				max_name_length = 18,
				max_prefix_length = 15,
				truncate_names = true,
				tab_size = 18,
				offsets = {
					{
						filetype = "neo-tree",
						text = "File Explorer",
						text_align = "center",

						separator = true,
					},
				},
				color_icons = true,
				get_element_icon = function(element)
					local icon, hl =
						require("nvim-web-devicons").get_icon_by_filetype(element.filetype, { default = false })
					return icon, hl
				end,
				always_show_bufferline = true,
				diagnostics = "nvim_lsp",
				diagnostics_update_in_insert = false,
				diagnostics_indicator = function(count, level, diagnostics_dict, context)
					if context.buffer:current() then
						return ""
					end

					return ""
				end,
				highlights = {
					background = {
						guibg = "None",
					},
					fill = {
						guibg = "None",
					},
					close_button = {
						guibg = "None",
					},
					separator_visible = {
						guibg = "None",
					},
					tab_close = {
						guibg = "None",
					},
					tab_separator = {
						guibg = "None",
					},
					tab_separator_selected = {
						guibg = "None",
					},
				},
			},
		})

		vim.g.transparent_groups = vim.list_extend(
			vim.g.transparent_groups or {},
			vim.tbl_map(function(v)
				return v.hl_group
			end, vim.tbl_values(require("bufferline.config").highlights))
		)
	end,
}

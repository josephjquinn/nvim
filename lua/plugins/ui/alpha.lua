return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Set header
    dashboard.section.header.val = {
	[[                                                    ]],
	[[     dMMMMb  dMMMMMP .aMMMb  dMP dMP dMP dMMMMMMMMb ]],
	[[    dMP dMP dMP     dMP"dMP dMP dMP amr dMP"dMP"dMP ]],
	[[   dMP dMP dMMMP   dMP dMP dMP dMP dMP dMP dMP dMP  ]],
	[[  dMP dMP dMP     dMP.aMP  YMvAP" dMP dMP dMP dMP   ]],
	[[ dMP dMP dMMMMMP  VMMMP"    VP"  dMP dMP dMP dMP    ]],
	[[                                                    ]],
}

    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button("e", "  > New File", "<cmd>ene<CR>"),
      dashboard.button("SPC ff", "󰱼 > Find File", "<cmd>Telescope find_files<CR>"),
      dashboard.button("SPC fw", "  > Find Word", "<cmd>Telescope live_grep<CR>"),
      dashboard.button("q", " > Quit NVIM", "<cmd>qa<CR>"),
    }

    -- Send config to alpha
    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}

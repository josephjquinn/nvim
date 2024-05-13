--setup
vim.g.mapleader = " "
local keymap = vim.keymap

-- general
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
keymap.set("n", "<leader>ah", ":nohl<CR>", { desc = "Clear search highlights" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
-- keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
-- keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
-- keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
-- keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

-- keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
-- keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
-- keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
-- keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
-- keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- Buffers
keymap.set("n", "<leader>bd", "<cmd>Bdelete<cr>", { desc = "Delete Buffer" })
keymap.set("n", "<leader>m", "<cmd>bnext<cr>", { desc = "Next Buffer" })
keymap.set("n", "<leader>n", "<cmd>bprevious<cr>", { desc = "Previous Buffer" })

-- NeoTree
keymap.set("n", "<leader>e", "<cmd>Neotree toggle position=left<cr>", { desc = "Toggle Explorer Left " })
--keymap.set("n", "<leader>d", "<cmd>Neotree toggle reveal position=left<cr>", { desc = "Toggle Explorer Left " })
keymap.set("n", "<leader>o", function()
	if vim.bo.filetype == "neo-tree" then
		vim.cmd("wincmd p")
	else
		vim.cmd.Neotree("focus")
	end
end, { desc = "Toggle Explorer Focus" })
keymap.set("n", "-", function()
	require("neo-tree.command").execute({
		toggle = true,
		reveal = true,
		action = "focus",
		position = "float",
	})
end, { desc = "Toggle Explorer Float" })

-- Telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>fw", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")

-- lazygit
keymap.set("n", "<leader>gg", "<cmd>LazyGit<cr>")

-- alpha
keymap.set("n", "<leader>h", "<cmd>Alpha<cr>")

-- transparency
keymap.set("n", "<leader>-", "<cmd>TransparentToggle<cr>")

-- toggle term code run
keymap.set("n", "<leader>rj", "<cmd>TermExec cmd='java %'<CR>")
keymap.set("n", "<leader>rp", "<cmd>TermExec cmd='python3 %'<CR>")

-- terminal
keymap.set("n", "<leader>tf", "<cmd>ToggleTerm dir='%:p:h'<CR>", { desc = "ToggleTerm Float" })
keymap.set(
	"n",
	"<leader>th",
	"<cmd>ToggleTerm dir='%:p:h' direction=horizontal<CR>",
	{ desc = "ToggleTerm Horizontal" }
)

-- compiler
keymap.set("n", "<leader>co", "<cmd>CompilerOpen<cr>", { desc = "Open Compiler" })
keymap.set(
	"n",
	"<leader>ci",
	"<cmd>CompilerStop<cr>" -- (Optional, to dispose all tasks before redo)
		.. "<cmd>CompilerRedo<cr>",
	{ desc = "Redo last compile" }
)
keymap.set("n", "<leader>cr", "<cmd>CompilerToggleResults<cr>", { desc = "Toggle compiler results" })

-- sniprun
keymap.set("n", "<leader>rr", "<Plug>SnipRun", { desc = "Snip Run" })

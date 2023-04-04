-- import telescope plugin safely
local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
	return
end

-- import telescope actions safely
local actions_setup, actions = pcall(require, "telescope.actions")
if not actions_setup then
	return
end

local builtin = require("telescope.builtin")
local keymap = vim.keymap -- for conciseness

-- configure telescope
telescope.setup({
	-- configure custom mappings
	defaults = {
		file_ignore_patterns = { "node_modules", ".git" },
		mappings = {
			i = {
				["<C-k>"] = actions.move_selection_previous, -- move to prev result
				["<C-j>"] = actions.move_selection_next, -- move to next result
				["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist, -- send selected to quickfixlist
			},
		},
		path_display = { "truncate" },
	},
})

telescope.load_extension("fzf")

keymap.set(
	"n",
	"<leader>ff",
	"<cmd>Telescope find_files<cr>",
	{ desc = "[F]ind [F]iles within current working directory, repects `.gitignore`" }
) -- find files within current working directory, respects .gitignore
-- keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set(
	"n",
	"<leader>fc",
	"<cmd>Telescope grep_string<cr>",
	{ desc = "[F]ind string under [C]ursor in current working directory" }
) -- find string under cursor in current working directory
--keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "List open buffers in current neovim instance" }) -- list open buffers in current neovim instance
--keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "List available help tags" }) -- list available help tags

keymap.set("n", "<leader>fs", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end, { desc = "[F]ind [S]tring in current working directory" })

keymap.set("n", ";F", function()
	builtin.current_buffer_fuzzy_find()
end, { desc = "Find in current opened file/buffer" })

keymap.set("n", "<leader>fa", function()
	builtin.find_files({
		no_ignore = false,
		hidden = true,
	})
end, { desc = "[F]ind [A]ll files" })

keymap.set("n", ";F", function()
	builtin.find_files({
		no_ignore = true,
		hidden = true,
	})
end, { desc = "Find hidden files within current working directory" })

keymap.set("n", "<C-p>", builtin.git_files, {}, { desc = "Find files within current git repository" })

keymap.set("n", ";r", function()
	builtin.live_grep()
end, { desc = "Find string in current working directory as you type" })

keymap.set("n", "\\\\", function()
	builtin.buffers()
end, { desc = "List open buffers in current neovim instance" })

keymap.set("n", ";t", function()
	builtin.help_tags()
end, { desc = "List available help tags" })

keymap.set("n", ";;", function()
	builtin.resume()
end, { desc = "Resume last telescope session" })

keymap.set("n", ";e", function()
	builtin.diagnostics()
end, { desc = "List all diagnostics" })

keymap.set("n", "<leader>fk", function()
	builtin.keymaps()
end, { desc = "[F]ind [K]eymaps" })

-- telescope git commands
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>", { desc = "List all git commits" }) -- list all git commits (use <cr> to checkout) ["gc" for git commits]

keymap.set(
	"n",
	"<leader>gfc",
	"<cmd>Telescope git_bcommits<cr>",
	{ desc = "List all git commits for current files/buffer" }
) -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]

keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>", { desc = "List all git branches" }) -- list git branches (use <cr> to checkout) ["gb" for git branch]

keymap.set(
	"n",
	"<leader>gs",
	"<cmd>Telescope git_status<cr>",
	{ desc = "List current changes per file with diff preview" }
) -- list current changes per file with diff preview ["gs" for git status]

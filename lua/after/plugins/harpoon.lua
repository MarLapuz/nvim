local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
local keymap = vim.keymap -- for conciseness

keymap.set("n", "<leader>h", mark.add_file, { desc = "Add file to harpoon" })
keymap.set("n", "<C-t>", ui.toggle_quick_menu, { desc = "Toggle harpoon quick menu" })

keymap.set("n", "<leader>1", function()
	ui.nav_file(1)
end, { desc = "Navigate to harpoon file 1" })

keymap.set("n", "<leader>2", function()
	ui.nav_file(2)
end, { desc = "Navigate to harpoon file 2" })

keymap.set("n", "<leader>3", function()
	ui.nav_file(3)
end, { desc = "Navigate to harpoon file 3" })

keymap.set("n", "<leader>4", function()
	ui.nav_file(4)
end, { desc = "Navigate to harpoon file 4" })

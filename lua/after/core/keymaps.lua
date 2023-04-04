-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps
---------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Other way to exit insert mode" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
keymap.set("n", "x", '"_x', { desc = "Delete single character without copying into register" })

-- increment/decrement numbers
keymap.set("n", "+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- delete a word backgrounds
keymap.set("n", "dw", 'vb"_d', { desc = "Delete a word backwards" })

-- select all
keymap.set("n", "<C-a>", "gg<S-v>G", { desc = "Select all" })

-- move command on highlighted lines of code
keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move highlighted lines of code upward" })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move highlighted lines of code downward" })

-- improved `J` so that the cursor will stay
keymap.set("n", "J", "mzJ`z")

-- automatically center on ctrl + u/ ctrl + d
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- keep search-term in the middle
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- greatest remap ever (refrain from yanking the one you deleted)
keymap.set("x", "<leader>p", '"_dP', { desc = "Paste the one on register" }) -- noformat

-- do nothing on `Q`
keymap.set("n", "Q", "<nop>")

-- Replace saving of files to `s` on normal mode
keymap.set("n", "s", ":w<CR>", { desc = "Save file" })
keymap.set("n", "s", ":wa<CR>", { desc = "Save all files" })

-- Go to the ending bracket of function
keymap.set("n", "E", "$%")

-- replace all text within the file that’s under the cursor
keymap.set(
	"n",
	"<leader>s",
	[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
	{ desc = "Replace all text within the file that’s under the cursor" }
)

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "[S]plit window [V]ertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "[S]plit window [H]orizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "[S]split window [E]qually" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>", { desc = "Close current split window" }) -- close current split window
keymap.set("n", "<C-h>", "<C-w>h", { noremap = true }) -- go the left window
keymap.set("n", "<C-l>", "<C-w>l", { noremap = true }) -- go the right window

keymap.set("n", "<leader>to", ":tabnew<CR>", { desc = "Open new tab" }) -- open new tab
--keymap.set("n", "<leader>tx", ":tabclose<CR>", {desc = "Close current tab"}) -- close current tab
keymap.set("n", "<leader>tx", ":bd<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab

----------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>", { desc = "Toggle split window maximization" }) -- toggle split window maximization

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle file [E]xplorer" }) -- toggle file explorer

-- restart lsp server
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary

-- bufferline
keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", {})
keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", {})

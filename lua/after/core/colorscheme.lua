local status, _ = pcall(vim.cmd, "colorscheme nightfox")

if not status then
	print("Colorscheme not found!")
	return
end

-- Make transparent background
local api = vim.api
api.nvim_command("highlight Normal ctermbg=NONE guibg=NONE")

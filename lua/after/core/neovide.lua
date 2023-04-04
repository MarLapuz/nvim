if vim.g.neovide then
	vim.g.neovide_remember_window_size = true
	vim.g.neovide_refresh_rate = 100
	vim.g.neovide_refresh_rate_iddle = 10
	vim.g.neovide_floating_blur_amount_x = 2.0
	vim.g.neovide_floating_blur_amount_y = 2.0

	-- Helper function for transparency formatting
	local alpha = function()
		return string.format("%x", math.floor(255 * (vim.g.neovide_transparency_point or 0.68)))
	end
	-- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
	vim.g.neovide_transparency = 1
	vim.g.neovide_background_color = "#000000" .. alpha()
end

-- local status, _ = pcall(vim.cmd, "colorscheme nightfox")

-- if not status then
--print("Colorscheme not found!")
--return
--end

-- Make transparent background
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

require("catppuccin").setup({
	transparent_background = false,
	color_overrides = {
		all = {
			text = "#ffffff",
		},
		mocha = {
			rosewater = "#F5E0DC",
			flamingo = "#ABAFFF",
			pink = "#F5C2E7",
			mauve = "#54B9FF",
			red = "#F38BA8",
			maroon = "#48E8BF",
			peach = "#FAB387",
			yellow = "#F9E2AF",
			green = "#EBC489",
			teal = "#54B9FF",
			sky = "#89DCEB",
			sapphire = "#74C7EC",
			blue = "#89B4FA",
			lavender = "#ABAFFF",
			text = "#CDD6F4",
			subtext1 = "#BAC2DE",
			subtext0 = "#A6ADC8",
			overlay2 = "#9399B2",
			overlay1 = "#7F849C",
			overlay0 = "#6C7086",
			surface2 = "#585B70",
			surface1 = "#45475A",
			surface0 = "#313244",
			base = "#17191E",
			mantle = "#24262E",
			crust = "#11111B",
		},
		frappe = {},
		macchiato = {},
		latte = {},
	},
})

vim.cmd("colorscheme catppuccin")

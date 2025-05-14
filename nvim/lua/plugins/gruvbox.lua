return {
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = function()
			vim.o.background = "dark" -- or "light" for light mode
			--
			require("gruvbox").setup({

				terminal_colors = true,
				contrast = "hard",
				italic = {
					operators = true,
				},
				palette_overrides = {
					dark0_hard = "#0e1018",
				},
				overrides = {
					MatchParen = { bg = "#9d0006" },
					SignColumn = { bg = "#0e1018" },
				},
			})
			--
			vim.cmd("colorscheme gruvbox")
		end,
		opts = ...,
	},
}

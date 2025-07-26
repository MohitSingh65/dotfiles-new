return {
	"zaldih/themery.nvim",
	lazy = false,
	config = function()
		require("themery").setup({
			themes = { "gruvbox", "ayu", "tokyonight", "solarized" }, -- Your list of installed colorschemes.
			livePreview = true,                              -- Apply theme while picking. Default to true.
		})
	end,
	keys = {
		{
			"<leader>ts",
			function()
				vim.cmd("Themery")
			end,
			desc = "Theme Selector",
		},
	},
}

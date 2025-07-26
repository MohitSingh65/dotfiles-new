return {

	-- THEMERY: Theme selector plugin
	{
		"zaldih/themery.nvim",
		dependencies = { "nvim-telescope/telescope.nvim" },
		lazy = false,
		priority = 1000, -- Load early
		config = function()
			-- Load previously used theme if available
			pcall(require, "themery_data")

			-- Configure Themery with custom theme list
			require("themery").setup({
				themes = {
					{
						name = "Gruvbox Dark",
						colorscheme = "gruvbox",
						before = [[ vim.opt.background = "dark" ]],
					},
					{
						name = "Gruvbox Light",
						colorscheme = "gruvbox",
						before = [[ vim.opt.background = "light" ]],
					},
					{
						name = "Kanagawa Dragon",
						colorscheme = "kanagawa-dragon",
					},
					{
						name = "Kanagawa Lotus",
						colorscheme = "kanagawa-lotus",
					},
					{
						name = "Tokyonight Dark",
						colorscheme = "tokyonight",
						before = [[
						vim.g.tokyonight_style = "night"
						vim.opt.background = "dark"
					  ]],
					},
					{
						name = "Tokyonight Light",
						colorscheme = "tokyonight",
						before = [[
							vim.g.tokyonight_style = "day"
							vim.opt.background = "light"
						  ]],
					},
					{
						name = "Solarized Osaka",
						colorscheme = "solarized-osaka",
					},
					{
						name = "Solarized Dark",
						colorscheme = "solarized",
						before = [[vim.opt.background = "dark"]],
					},
					{
						name = "Solarized Light",
						colorscheme = "solarized",
						before = [[vim.opt.background = "light"]],
					},
					{
						name = "NeoSolarized Dark",
						colorscheme = "NeoSolarized",
						before = [[vim.opt.background = "dark"]],
					},
					{
						name = "NeoSolarized Light",
						colorscheme = "NeoSolarized",
						before = [[vim.opt.background = "light"]],
					},
				},
				livePreview = true,
			})
		end,
	},

	-- THEMES
	{ "ellisonleao/gruvbox.nvim", priority = 1000 },
	{ "rebelot/kanagawa.nvim", priority = 1000 },
	{ "folke/tokyonight.nvim", priority = 1000 },
	{ "craftzdog/solarized-osaka.nvim", priority = 1000 },
	{ "maxmx03/solarized.nvim", priority = 1000 },
	{ "Tsuzat/NeoSolarized.nvim", priority = 1000 },
}

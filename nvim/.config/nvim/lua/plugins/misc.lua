return {
	"tpope/vim-surround",
	"tpope/vim-commentary",
	{
		"jiangmiao/auto-pairs",
		init = function()
			vim.g["AutoPairsShortcutToggle"] = ""
		end,
	},
	{
		"bobrown101/fff.nvim",
		keys = {
			{ "<leader>p", '<cmd>lua require("fff").start()<cr>' },
		},
	},
	{
		"rlane/pounce.nvim",
		keys = {
			{ "f", "<cmd>Pounce<cr>" },
		},
	},
}

return {
	"tpope/vim-surround",
	{
		"tpope/vim-commentary",
		keys = { { "gc", mode = { "n", "v" } } },
	},
	{
		"jiangmiao/auto-pairs",
		init = function()
			vim.g["AutoPairsShortcutToggle"] = ""
		end,
	},
	{
		"rlane/pounce.nvim",
		keys = {
			{ "f", "<cmd>Pounce<cr>" },
		},
	},
	
}

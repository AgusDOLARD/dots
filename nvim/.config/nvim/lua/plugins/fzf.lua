return {
	"vijaymarupudi/nvim-fzf",
	cmd = "FzfLua",
	dependencies = {
		"ibhagwan/fzf-lua",
		keys = {
			{ "<M-p>", "<cmd>FzfLua files<cr>" },
			{ "<M-P>", "<cmd>FzfLua git_files<cr>" },
		},
	},
}

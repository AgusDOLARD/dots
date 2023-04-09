return {
	"freddiehaddad/base16-nvim",
	lazy = false,
	priority = 1000,
	init = function()
		vim.cmd("colorscheme base16-classic-dark")
	end,
}

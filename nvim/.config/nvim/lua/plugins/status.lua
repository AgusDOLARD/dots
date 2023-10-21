return {
	"romgrk/barbar.nvim",
	init = function()
		vim.g.barbar_auto_setup = false
	end,
	lazy = false,
	opts = {
		auto_hide = true,
		icons = {
			filetype = {
				enabled = false,
			},
		},
	},
	keys = {
		{ "<S-j>", "<cmd>BufferPrevious<cr>" },
		{ "<S-k>", "<cmd>BufferNext<cr>" },
	},
}

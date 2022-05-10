require("formatter").setup({
	filetype = {
		sh = {
			function()
				return {
					exe = "shfmt",
					stdin = true,
				}
			end,
		},
	},
})

local group = vim.api.nvim_create_augroup("FormatAutogroup", { clear = true })
vim.api.nvim_create_autocmd("BufWritePost", { command = "FormatWrite", group = group })

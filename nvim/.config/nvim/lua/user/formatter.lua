local shfmt = function()
	return { exe = "shfmt", args = { "-" }, stdin = true }
end

local stylua = function()
	return { exe = "stylua", args = { "-" }, stdin = true }
end

require("formatter").setup({
	logging = false,
	filetype = {
		sh = { shfmt },
		lua = { stylua },
		typescript = { prettier },
		javascript = { prettier },
		json = { prettier },
	},
})

local group = vim.api.nvim_create_augroup("Formatter", { clear = true })
vim.api.nvim_create_autocmd("BufWritePost", {
	pattern = "*",
	command = "FormatWrite",
	group = group,
})

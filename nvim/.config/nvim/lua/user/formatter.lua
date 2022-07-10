local util = require("formatter.util")

local shfmt = function()
	return { exe = "shfmt", args = { "-" }, stdin = true }
end

local stylua = function()
	return { exe = "stylua", args = { "-" }, stdin = true }
end

local prettier = function(parser)
	return {
		exe = "prettier",
		args = {
			"--no-config",
			"--tab-width",
			"4",
			"--no-semi",
			"--single-quote",
			"--stdin-filepath",
			util.escape_path(util.get_current_buffer_file_path()),
			"--parser",
			parser,
		},
		stdin = true,
		try_node_modules = true,
	}
end

require("formatter").setup({
	logging = false,
	filetype = {
		sh = { shfmt },
		lua = { stylua },
		typescript = { prettier },
		javascript = { prettier },
		json = { prettier },
		html = { prettier },
	},
})

local group = vim.api.nvim_create_augroup("Formatter", { clear = true })
vim.api.nvim_create_autocmd("BufWritePost", {
	pattern = "*",
	command = "FormatWrite",
	group = group,
})

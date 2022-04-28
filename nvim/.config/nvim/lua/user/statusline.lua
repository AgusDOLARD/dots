-- vim.opt.tatusline = '%m %r %f %= %l:%c | %p%% '
vim.o.showmode = false
vim.o.laststatus = 2
vim.o.ruler = false

local function mode()
	local modes = {
		i = "INSERT",
		n = "NORMAL",
		R = "REPLACE",
		v = "VISUAL",
		V = "VISUAL",
		c = "COMMAND",
		t = "TERMINAL",
	}
	return modes[vim.fn.mode()]
end

function _G.build_statusline()
	local space = " "
	local big_space = "%="
	local filename = vim.fn.expand("%:t")
	local modified = vim.bo.modified and "[+]" or space
	-- local position = vim.fn.line('.') .. ':' .. vim.fn.col('.')

	local components = {
		space,
		mode(),
		modified,
		filename,
		-- big_space,
		-- position,
		-- space
	}

	return table.concat(components, space)
end

vim.cmd("set statusline=%!v:lua.build_statusline()")

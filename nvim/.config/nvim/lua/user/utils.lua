local M = {}

function M.map(mode, key, result, beh)
	local default = { noremap = true, silent = true }
	beh = beh or default
	vim.api.nvim_set_keymap(mode, key, result, beh)
end

local function Count_bufs_by_type(loaded_only)
	loaded_only = (loaded_only == nil and true or loaded_only)
	local count = { normal = 0, acwrite = 0, help = 0, nofile = 0, nowrite = 0, quickfix = 0, terminal = 0, prompt = 0 }
	local buftypes = vim.api.nvim_list_bufs()
	for _, bufname in pairs(buftypes) do
		if not loaded_only or vim.api.nvim_buf_is_loaded(bufname) then
			local buftype = vim.api.nvim_buf_get_option(bufname, "buftype")
			buftype = buftype ~= "" and buftype or "normal"
			count[buftype] = count[buftype] + 1
		end
	end
	return count
end

function M.close_buffer()
	local bufTable = Count_bufs_by_type()
	if bufTable.normal <= 1 then
		vim.api.nvim_exec([[:q]], true)
	else
		vim.api.nvim_exec([[:bd]], true)
	end
end

return M

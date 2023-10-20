
return {
  "nvim-tree/nvim-tree.lua",
  keys = {
    { "<M-o>" , function ()
	local nvimTree=require("nvim-tree.api")
	local currentBuf = vim.api.nvim_get_current_buf()
	local currentBufFt = vim.api.nvim_get_option_value("filetype", { buf = currentBuf })
	if currentBufFt == "NvimTree" then
		nvimTree.tree.toggle()
	else
		nvimTree.tree.focus()
	end
    end }
  },
  config = function ()
    -- code
     require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    side = "right",
    width = 40,
  },
})
  end

}

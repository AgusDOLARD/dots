return {
  "nvim-tree/nvim-tree.lua",
      cmd = { "NvimTreeToggle"  },
  keys = {
    { "<M-o>" , "<cmd> NvimTreeToggle<cr>" }
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

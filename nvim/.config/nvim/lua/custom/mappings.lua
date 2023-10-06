local M = {}

M.disable = {
}

M.customMappings = {
  v = {
    ["<leader>s"] = { ":s//g<Left><Left>" }
  },
  i = {
    ["jj"] = { "<ESC>", "Escape insert mode", opts = { nowait = true } }
  },
  n = {
    ["<S-u>"] = { "<C-r>" },
    ["<leader>q"] = { "<cmd>lua require('custom.utils').close_buffer()<cr>" },
    ["<leader>s"] = { "<cmd>w<cr>" },
    ["S"] = { ":%s//g<Left><Left>" },
    ["J"] = { "<cmd>bp<cr>" },
    ["K"] = { "<cmd>bn<cr>" },

    -- Telescope
    ["<M-p>"] = { "<cmd> Telescope git_files<CR>", "Telescope" },
    ["<C-p>"] = { "<cmd> Telescope find_files<CR>", "Telescope" },

    -- Lsp
    ["gh"] = {
      function()
        vim.lsp.buf.hover()
      end,
      "LSP hover",
    },

  }
}

return M

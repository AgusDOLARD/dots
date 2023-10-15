local plugins = {
  {
    "kylechui/nvim-surround",
    event = "VeryLazy",
    opts = {},
  },
  {
    'abecodes/tabout.nvim',
    event = "InsertEnter",
    opts = {
    tabkey = '<M-n>', 
    backwards_tabkey = '<M-b>', 
    enable_backwards = true, 
    },
  },
  {
    "folke/which-key.nvim",
    enabled = false,
  },
  {
    "rlane/pounce.nvim",
    keys = {
      { "f", "<cmd>Pounce<cr>" },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      auto_install = true,
    },
  },
  {
    "ray-x/go.nvim",
    dependencies = { -- optional packages
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("go").setup()
    end,
    ft = { "go", "gomod" },
    build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
  },
  {
    "VonHeikemen/lsp-zero.nvim",
    lazy = false,
    dependencies = {
      "lukas-reineke/lsp-format.nvim",
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
    },
    branch = "v3.x",
    config = function()
      local lsp_zero = require('lsp-zero')
      lsp_zero.on_attach(function(client, bufnr)
        lsp_zero.default_keymaps({ buffer = bufnr })
        if client.supports_method('textDocument/formatting') then
          require('lsp-format').on_attach(client)
        end
      end)

      require("mason").setup({})
      require("mason-lspconfig").setup({
        handlers = {
          lsp_zero.default_setup,
        },
      })
    end,
  },
}

return plugins

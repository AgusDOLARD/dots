return {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
        { "williamboman/mason.nvim", opts = {} },
        { "neovim/nvim-lspconfig" },
    },
    config = function()
        require("mason-lspconfig").setup({ ensure_installed = { "lua_ls", "gopls", "tsserver" } })
        require("mason-lspconfig").setup_handlers({
            function(server_name) require("lspconfig")[server_name].setup({}) end,
        })
    end,
}

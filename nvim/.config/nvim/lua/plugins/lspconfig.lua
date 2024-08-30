return {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
        { "williamboman/mason.nvim", opts = {} },
        { "neovim/nvim-lspconfig" },
    },
    config = function()
        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities =
            require("cmp_nvim_lsp").default_capabilities(capabilities)

        require("mason-lspconfig").setup({
            ensure_installed = { "lua_ls", "gopls" },
        })
        require("mason-lspconfig").setup_handlers({
            function(server_name)
                require("lspconfig")[server_name].setup({
                    capabilities = capabilities,
                })
            end,
        })
    end,
}

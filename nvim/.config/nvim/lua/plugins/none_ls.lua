return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")
        local f = null_ls.builtins.formatting
        local d = null_ls.builtins.diagnostics
        null_ls.setup({
            sources = {
                f.stylua,
                f.goimports,
                f.prettierd,
                d.eslint_d,
            },
        })
    end,
}

return {
    "m4xshen/autoclose.nvim",
    event = { "InsertEnter" },
    opts = {
        keys = {
            ["<"] = { escape = true, close = true, pair = "<>", disabled_filetypes = {} },
        },
    },
}

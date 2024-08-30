return {
    "jay-babu/mason-null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "williamboman/mason.nvim",
        "nvimtools/none-ls.nvim",
        "nvim-lua/plenary.nvim",
    },
    opts = {
        ensure_installed = {
            "stylua",
            "goimports",
            "gomodifytags",
        },
        automatic_setup = true,
        handlers = {},
    },
}

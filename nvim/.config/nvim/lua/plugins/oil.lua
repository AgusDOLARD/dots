return {
    "stevearc/oil.nvim",
    keys = { {
        "<M-o>",
        function() require("oil").open_float(".") end,
    } },
    opts = {
        default_file_explorer = true,
        keymaps = {
            ["q"] = "actions.close",
            ["<M-o>"] = "actions.close",
        },
        float = {
            padding = 2,
            max_width = 75,
            max_height = 20,
            border = "rounded",
        },
    },
}

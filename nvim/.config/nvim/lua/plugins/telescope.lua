return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local actions = require("telescope.actions")
        require("telescope").setup({
            defaults = {
                mappings = {
                    i = {
                        ["<M-p>"] = actions.close,
                        ["<esc>"] = actions.close,
                        ["<M-j>"] = actions.move_selection_next,
                        ["<M-k>"] = actions.move_selection_previous,
                    },
                },
            },
        })
    end,
    keys = {
        {
            "<M-P>",
            function() require("telescope.builtin").find_files() end,
        },
        {
            "<M-p>",
            function() require("telescope.builtin").git_files() end,
        },
        {
            "<leader>fs",
            function() require("telescope.builtin").git_status() end,
        },
        {
            "<leader>fw",
            function() require("telescope.builtin").live_grep() end,
        },
        {
            "<leader>ft",
            function() require("telescope.builtin").help_tags() end,
        },
    },
}

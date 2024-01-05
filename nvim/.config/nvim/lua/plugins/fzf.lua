return {
    "ibhagwan/fzf-lua",
    cmd = "FzfLua",
    opts = {
        height = 0.9,
        width = 0.7,
        winopts = { preview = { hidden = "hidden" } },
        keymap = {
            builtin = {
                ["<leader>p"] = "toggle-preview",
                ["<C-d>"] = "preview-page-down",
                ["<C-u>"] = "preview-page-up",
            },
        },
    },
    keys = {
        { "<M-P>", function() require("fzf-lua").files() end },
        { "<M-p>", function() require("fzf-lua").git_files() end },
        { "<leader>fs", function() require("fzf-lua").git_status() end },
        { "<leader>fw", function() require("fzf-lua").grep_cword() end },
        { "<leader>ft", function() require("fzf-lua").help_tags() end },
    },
}

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
        { "<M-P>", "<cmd>lua require('fzf-lua').files()<cr>" },
        { "<M-p>", "<cmd>lua require('fzf-lua').git_files()<cr>" },
        { "<leader>fs", "<cmd>lua require('fzf-lua').git_status()<cr>" },
        { "<leader>fw", "<cmd>lua require('fzf-lua').grep_cword()<cr>" },
        { "<leader>ft", "<cmd>lua require('fzf-lua').help_tags()<cr>" },
    },
}

return {
    "tpope/vim-fugitive",
    cmd = { "Git", "G" },
    keys = {
        { "gss", "<cmd>tab Git<cr>" },
        { "<leader>gd", vim.cmd.Gvdiffsplit },
    },
}

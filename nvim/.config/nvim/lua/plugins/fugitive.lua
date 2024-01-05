return {
    "tpope/vim-fugitive",
    cmd = { "Git", "G" },
    keys = {
        { "<leader>gs", "<cmd>tab Git<cr>" },
        { "<leader>gd", vim.cmd.Gvdiffsplit },
    },
}

return {
    "RRethy/nvim-base16",
    lazy = false,
    priority = 1000,
    init = function()
        vim.cmd.colorscheme("base16-default-dark")
        vim.cmd.highlight("clear SignColumn")
    end,
}

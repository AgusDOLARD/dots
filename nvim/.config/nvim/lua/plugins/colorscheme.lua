return {
    "luisiacc/gruvbox-baby",
    lazy = false,
    priority = 1000,
    init = function()
        vim.cmd.colorscheme("gruvbox-baby")
        vim.cmd.highlight("clear SignColumn")
    end,
}

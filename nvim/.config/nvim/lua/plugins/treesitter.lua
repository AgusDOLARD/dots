local ft = { "go", "elixir" }
return {
    "nvim-treesitter/nvim-treesitter",
    ft = ft,
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = ft,
            highlight = { enable = ft },
            additional_vim_regex_highlighting = false,
        })
    end,
}

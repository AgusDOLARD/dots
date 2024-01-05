return {
    "AgusDOLARD/backout.nvim",
    dir = vim.env.HOME .. "/projs/backout.nvim/",
    opts = {},
    keys = {
        { "<M-b>", function() require("backout").back() end, mode = "i" },
        { "<M-n>", function() require("backout").out() end, mode = "i" },
    },
}

local group = vim.api.nvim_create_augroup("Custom", { clear = true })
vim.api.nvim_create_autocmd("InsertEnter", { command = "norm zz", group = group })
vim.api.nvim_create_autocmd("TextYankPost", { command = "lua vim.highlight.on_yank()", group = group })

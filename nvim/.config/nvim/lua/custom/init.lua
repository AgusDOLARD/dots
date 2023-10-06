local group = vim.api.nvim_create_augroup("Custom", { clear = true })
vim.api.nvim_create_autocmd("InsertEnter", { command = "norm zz", group = group })
vim.api.nvim_create_autocmd("TextYankPost", { command = "lua vim.highlight.on_yank()", group = group })

vim.opt.undodir = os.getenv("XDG_CACHE_HOME") .. "/nvim/undo"
vim.opt.undofile = true
vim.opt.undolevels = 1000
vim.opt.swapfile = false
vim.opt.hlsearch = false

-- lsp  zero
vim.g.lsp_zero_extend_lspconfig = 0

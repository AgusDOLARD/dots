local g = vim.g
local opt = vim.opt

g.mapleader = " "
opt.background = "dark"
opt.clipboard = "unnamedplus"
opt.expandtab = true
opt.fillchars = { eob = " " }
opt.hlsearch = false
opt.ignorecase = true
opt.laststatus = 0
opt.linebreak = true
opt.path = { "**", ".", "," }
opt.ruler = false
opt.scrolloff = 5
opt.shiftwidth = 2
opt.showcmd = false
opt.showmode = false
opt.smartcase = true
opt.smartindent = true
opt.swapfile = false
opt.tabstop = 2
opt.termguicolors = true
opt.undodir = os.getenv("XDG_CACHE_HOME") .. "/nvim/undo"
opt.undofile = true
opt.undolevels = 1000
opt.wildignore = { "*/.git/*" }
opt.wildmenu = true

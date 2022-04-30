local g = vim.g
local opt = vim.opt

g.mapleader = " "
opt.clipboard = "unnamedplus"
opt.swapfile = false

-- hide statusline
opt.showmode = false
opt.laststatus = 0
opt.showcmd = false
opt.ruler = false

opt.scrolloff = 5
opt.hlsearch = false
opt.showmatch = true -- highlight matching parenthesis
opt.ignorecase = true -- ignore case letters when search
opt.smartcase = true -- ignore lowercase for the whole pattern
opt.linebreak = true -- wrap on word boundary
opt.expandtab = true -- use spaces instead of tabs
opt.shiftwidth = 4 -- shift 4 spaces when tab
opt.tabstop = 4 -- 1 tab == 4 spaces
opt.smartindent = true -- autoindent new lines
opt.undolevels = 1000
opt.undofile = true
opt.undodir = os.getenv("XDG_CACHE_HOME") .. "/nvim/undo"

opt.background = "dark"
opt.termguicolors = true -- enable 24-bit RGB colors

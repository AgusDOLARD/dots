local g = vim.g
local opt = vim.opt

-- General Settings
opt.background = "dark" -- Set the background to dark
g.mapleader = " " -- Set space as the map leader
opt.clipboard = "unnamedplus" -- Use system clipboard
opt.expandtab = true -- Use spaces instead of tabs
opt.fillchars = { eob = " " } -- Fill character at the end of the line
opt.hlsearch = false -- Do not highlight search matches as you type
opt.ignorecase = true -- Ignore case when searching
opt.linebreak = true -- Break lines at word boundaries
opt.path = { "**" } -- Set the search path for files
opt.ruler = false -- Do not show the ruler at the bottom
opt.scrolloff = 5 -- Minimum lines to keep above and below the cursor
opt.shiftwidth = 4 -- Number of spaces for each step of (auto)indent
opt.signcolumn = "yes" -- Always show the sign column
opt.showcmd = false -- Do not show command in the last line of the screen
opt.showmode = false -- Do not show current mode in the last line of the screen
opt.smartcase = true -- Override 'ignorecase' if the pattern contains uppercase characters
opt.smartindent = true -- Enable smart indenting
opt.swapfile = false -- Do not use swapfile
opt.tabstop = 4 -- Number of spaces that a <Tab> in the file counts for
opt.termguicolors = true -- Enable true colors in the terminal

-- Undo and History
opt.undodir = vim.env.XDG_CACHE_HOME .. "/nvim/undo" -- Set the directory for undo files
opt.undofile = true -- Maintain undo history between sessions
opt.undolevels = 1000 -- Maximum number of changes that can be undone

-- File Navigation
opt.wildignore = { "*/.git/*", "*/node_modules/*" } -- Ignore certain directories during file navigation
opt.wildmenu = true -- Display file completion matches in a horizontal menu

-- g.netrw_banner = 0
-- g.netrw_winsize = 25
-- g.netrw_liststyle = 3
-- g.netrw_browse_split = 4
